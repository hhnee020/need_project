<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/public/User_view_style.css">
    <link rel="stylesheet" href="/css/minjeong/memberPage.css">
    <link rel="stylesheet" href="/css/minjeong/AScss.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script type="text/javaScript" src="/js/minjeong/ASscript.js"></script>
    <script type="text/javaScript" src="/js/minjeong/memberjs.js"></script>
    <title>회원가입</title>
</head>
<body>
    <div id="wrap">
        <div style="padding-top: 1.5%;">
            <img src="/images/src/Logo.png" class="logo" style="margin-top: -1.5%;">
            <div style="margin:0; width: 80%; display: flex; ">
                <form>
                    <div>
                        <div class="col-lg-6" style="width: 500px;">
                            <div class="input-group">
                                <input type="text" class="form-control" name="search"placeholder="동네이름, 물품명, @아이디 검색">
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="button">
                                        <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
                                    </button>
                                </span>
                            </div><!-- /input-group -->
                        </div><!-- /.col-lg-6 -->
                    </div><!-- /.row -->
                </form>
                <div class="login" style="width: 400px;">
                    <ul class="nav1">
                        <li>
	                        <a href="myAct.do">닉네임</a></li>
	                    <li>
	                        <a href="myInfo.do">정보수정</a></li>
	                    <li>
                            <a href="">로그아웃</a></li>
                    </ul>
                </div >
            </div>
        </div>
        
        <section class="sec1">
            <form action="#" onsubmit="return checks()" name="frm" id="frm" method ="post">
            <table class="join_tb">
                <caption class="title">신규회원가입</caption>
                <tr>
                    <th class="info_th">아이디</th>
                    <td class="info_td"><input type="text" name="userid" id="userid" maxlength="16">
                        <button>중복확인</button> (영문소문자/숫자, 4~16자)</td>
                </tr>
                <tr>
                    <th class="info_th">비밀번호</th>
                    <td class="info_td"><input type="password" name="pwd" id="pwd" maxlength="16"> (영문 대소문자/숫자 4자~16자)</td>
                </tr>
                <tr>
                    <th class="info_th">비밀번호 확인</th>
                    <td class="info_td"><input type="password" name="pwd2"  id="pwd2" maxlength="10"></td>
                </tr>
                
                <tr>
                    <th class="info_th">이름</th>
                    <td class="info_td"><input type="text" name="username" id = "username" maxlength="10"></td>
                </tr>
                <tr>
                    <th class="info_th">닉네임</th>
                    <td class="info_td"><input type="text" name="nick"  id = "nick"></td>
                </tr>
                <tr>
                    <th class="info_th">이메일</th>
                    <td class="info_td"><input type="text" name="email" id = "email"></td>
                </tr>    
                <tr>
                    <th class="info_th">이메일 수신</th>
                        <td class="info_td">
                            <input type="radio" name="email" checked="checked" value="예">예
                            <input type="radio" name="email">아니오</td>
                </tr>
                <tr>
                    <th class="info_th">휴대전화</th>
                    <td class="info_td">
                        <input type="text" name="phone" id="phone" maxlength="13" placeholder="000-0000-0000"> ( "-" 기호를 포함하여 입력)</td>
                </tr>        
                <tr>
                    <th class="info_th">SMS 수신</th>
                        <td class="info_td">
                            <input type="radio" name="sms" id="sms" checked="checked" value="예">예
                            <input type="radio" name="sms" id="sms" >아니오</td>
                </tr>
                <tr style="height: 80px;">
                    <th class="info_th">주소</th>
                    <td class="info_td">
                        <input type="text" name="addr" id = "addr1" style="width:60px">
                        <button>우편번호</button><br>
                        <input type="text" name="addr" id = "addr2" style="width: 300px; margin: 1px;"><br>
                        <input type="text" name="addr" id = "addr3" style="width: 300px; margin: 1px;">
                    </td>
                </tr> 
                <tr>
                    <th class="info_th">내 관심사</th>
                    <td class="info_td">
                    
                        <table class="as_tb" style="border: rgb(4, 112, 0);">
                            <tbody id="attentionSelectTbody">
                            </tbody>
                        </table>
                
                    </td>
                </tr>
            </table>
    
            <div class="info_btn">
                <button class="m_btn" type="submit">확인</button>
                <button class="m_btn">취소</button>
            </div>
            </form>    
        </section>
       </div>
</body>
</html>
