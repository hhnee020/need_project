package util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

import com.google.gson.Gson;

public class Utils {

	
	/* Http 응답 확인 및 Page Json Scraping And Json Type String Build */
	
	public static String httpJsonReader(String url, HashMap<String,String> maps) {
		HttpURLConnection con = connect(url);
		try {
			con.setRequestMethod("GET");
			for(Map.Entry<String, String> map : maps.entrySet() ) {
				con.setRequestProperty(map.getKey(), map.getValue());
			}
			int responseCode = con.getResponseCode();
			if(responseCode == HttpURLConnection.HTTP_OK) 
				return readBody(con.getInputStream());
			else 
				return readBody(con.getErrorStream());
			
		} catch (IOException e) {
            throw new RuntimeException("API 요청과 응답 실패", e);
		} finally {
			con.disconnect();
		}
		
	}
	
	public static HttpURLConnection connect(String apiurl) {
		try {
			return (HttpURLConnection) new URL(apiurl).openConnection();
		} catch (MalformedURLException e) {
            throw new RuntimeException("API URL이 잘못되었습니다. : " + apiurl, e);
        } catch (IOException e) {
            throw new RuntimeException("연결이 실패했습니다. : " + apiurl, e);
        }
	}
	
	public static String readBody(InputStream body) {
		try {
			InputStreamReader streamReader = new InputStreamReader(body);
			//들어오는 통로에 있는 바이트를 읽음 -> 그것이 올바르던, 에러던간에
			
			BufferedReader bufferReader = new BufferedReader(streamReader);
			//메모리에 적재시킴
			StringBuilder resBuilder = new StringBuilder();
			
			String line;
            while ((line = bufferReader.readLine()) != null) {
            	//line에 메모리에 적재시킨 내용을 읽어 넣음. , Null이 아니라면?
            	//StringBuilder에 추가시킴.
            	resBuilder.append(line);
            }
            return resBuilder.toString();
		} catch (IOException e) {
            throw new RuntimeException("API 응답을 읽는데 실패했습니다.", e);
		}
		
	}
	/* Http 응답 확인 및 Page Json Scraping And Json Type String Build */
	
	public static String MapToString(Map<String,String> maps) {
		return new Gson().toJson(maps);
	}
}
