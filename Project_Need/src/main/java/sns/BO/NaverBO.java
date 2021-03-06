/**
 * 
 */
package sns.BO;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.SecureRandom;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.format.Printer;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import util.Utils;


/**
 * @author bomin
 * 
 * Naver BO
 * 
 * 필요 처리 작업
 * need 페이지 내에서 네이버 로그인 연동해제를 원할 때
 * 에러코드 구분 후 처리
 * 접근토큰, 갱신토큰 재발급, 재갱신처리
 *
 */
enum Grant_Type {AUTHORIZATION_CODE ,REFRESH_TOKEN , DELETE }
enum Error_Type { ACCESS_DENIED ,INVALID_REQUEST }
enum Parameter {CLIENT_ID,CLIENT_PW,CALLBACKURL,STATE,CODE,REDIRECT_URI}
public class NaverBO {
	
	private static Logger log = LoggerFactory.getLogger(NaverBO.class);
	
	private final String client_id = "05jtVdeRZMc9IuQNnlVW";
	private final String client_pw = "xW1jC7dJs4";
	private final String callbackURL = "http://localhost:9080/oauth/naverCallback.do";
	private final String getCodeTokenURL = "https://nid.naver.com/oauth2.0/authorize";
	private final String getAccessTokenURL = "https://nid.naver.com/oauth2.0/token";
	private final String getUserProfileURL = "https://openapi.naver.com/v1/nid/me"; //유저 정보를 가져옴
	private final String getUserAccessConfirm = "https://openapi.naver.com/v1/nid/verify"; //해당 유저가 올바른지 인증

	public String getClient_id() {return client_id;}
	public String getClient_pw() {return client_pw;}
	public String getCallbackURL() {return callbackURL;}
	public String getGetCodeTokenURL() {return getCodeTokenURL;}
	public String getGetAccessTokenURL() {return getAccessTokenURL;}
	public String getGetUserProfileURL() {return getUserProfileURL;}
	public String getRandomState() {return new BigInteger(130, new SecureRandom()).toString();}
	
	
	
	public String[] getCodeState() throws IOException {

		String state = getRandomState();
		String apiURL = this.getCodeTokenURL+
					"?response_type=code"+
					"&client_id="+this.client_id +
					"&redirect_uri="+this.callbackURL +
					"&state="+state;
		log.info("인가 코드 획득 URL : " + apiURL);
		return new String[]{apiURL,state};
	}
	
	/**
	 * @param code	: 인가코드
	 * @param state : 생성했던 인증토큰을 다시 받음.
	 * @return		: 조합을 거쳐 유저의 접근토큰을 얻을 URL 반환
	 */
	public String getAccessToken(String code, String state) {

		StringBuilder strb = new StringBuilder();
		strb.append(this.getAccessTokenURL);
		strb.append("?grant_type=authorization_code");
		strb.append("&client_id="+this.client_id);
		strb.append("&client_secret="+this.client_pw);
		strb.append("&redirect_uri="+this.callbackURL);
		strb.append("&code="+code);
		strb.append("&state="+state);
		log.info("접근 토큰 획득 URL : " + strb.toString());
		return strb.toString();
	}
	
	/**
	 * @param access_token : 발급받은 접근토큰으로 프로필 데이터 조회
	 * @return			   : 정상처리 - 조회된 데이터는 parseUserData()로 Map으로 반환
	 */
	public Map<String,String> getUserProfile(String access_token) {
		Map<String,String> map = new HashMap<>();
		String header = "Bearer " + access_token;
		HashMap<String,String> requestHeaders = new HashMap<>();
        requestHeaders.put("Authorization", header);
		String json = Utils.httpJsonReader(this.getUserProfileURL, requestHeaders);
		log.info("유저 정보  Json : "+ json);
		return NaverBO.parseUserData(json);
	}
	
	/**
	 * @param maps  : 하단 parsToken()으로 얻은 Map이 정상처리 되었는지 확인하는 코드
	 * @return		: 정상처리 - true 반환, 비정상 처리 - false 반환
	 */
	public static boolean hasAccess_token(Map<String,String> maps) {
		for(Entry<String, String> map : maps.entrySet()) {
			if(map.getKey().equals("access_token")) return true;
		}
		return false;
	}

	public String getRefreshToken(String refresh) {

		StringBuilder strb = new StringBuilder();
		strb.append(this.getAccessTokenURL);
		strb.append("?grant_type=refresh_token");
		strb.append("&client_id="+this.client_id);
		strb.append("&client_secret="+this.client_pw);
		strb.append("&refresh_token="+refresh);
		log.info("토큰 갱신 획득 URL : " + strb.toString());
		return strb.toString();
	}
	
	/**
	 * @param json : 발급받은 인가코드로 사용자 토큰 발급을 위한 Json 처리
	 * @return	   : 정상처리 - {접근토큰, 갱신토큰, 기한, 타입} Map 반환
	 * 			   : 비정상처리 - {에러,에러설명} Map 반환
	 */
	public static Map<String,String> parseToken(String json){
		Map<String, String> map = new HashMap<>();
		JsonObject jo = JsonParser.parseString(json).getAsJsonObject();
		for(Map.Entry<String, JsonElement> responseMap : jo.getAsJsonObject().entrySet()) {
			map.put(responseMap.getKey(), responseMap.getValue().getAsString());
		}
		
		return map;
	}
	
	/**
	 * @param json : 발급받은 접근토큰으로 프로필 데이터 조회
	 * @return	   : 정상처리 - {고유한 유저 ID값, 프로필URL } Map 반환
	 */
	public static Map<String,String> parseUserData(String json){
		Map<String, String> map = new HashMap<>();
		
		JsonObject jo = JsonParser.parseString(json).getAsJsonObject();
		for(Map.Entry<String, JsonElement> responseMap : jo.get("response").getAsJsonObject().entrySet()) {
		//	System.out.println("parseUserData() - "+responseMap.getKey() +" : " + responseMap.getValue());
			log.info(responseMap.getKey() + " : " + responseMap.getValue());
			map.put(responseMap.getKey(), responseMap.getValue().getAsString());
		}
		
		return map;
	}
	
}
