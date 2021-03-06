<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="../../../css/style.css">
    <link rel="stylesheet" href="/css/minjeong/memberPage.css">

    <link rel="stylesheet" href="/css/public/User_view_style.css">
    <link rel="stylesheet" href="/css/minjeong/memberPage.css">

    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script type="text/javaScript" src="/js/minjeong/memberjs.js"></script>
    <title>회원정보</title>
</head>

<body>
    <div id="wrap">

        <header class="clearfix">
            <img src="/images/src/Logo.png" class="logo">
            
        
            <div class="login ">
             
             <ul class="nav1">
	             <li>
	                 <a href="">관리자</a></li>
	             <li>
	                 <a href="">로그아웃</a></li>
	     
            </ul>
            </div>
            
            <nav class="nav clearfix "> 
                
                <ul class="">
                    <li><a href="">공지사항</a></li>
                    <li><a href="">회원정보</a></li>
                    <li><a href="">게시판 관리</a></li>
                    <li><a href="">관리자 관리</a>
                    
                    </li>
                    
                    <li><a href="">문의 상담</a></li>
                    <li><a href="">신고처리</a></li>
                </ul>    
            
            </nav>
        
            <nav class="nav2 clearfix "> 
            <ul class="">
                <li><a href="memberList.do">회원목록조회</a></li>  
                <li><a href="memberOut.do">탈퇴회원관리</a></li>
            </ul> 
            </nav>
        
        
        </header>
    
        <section class="sec1">
            <table class="info_tb">
                <caption class="title">회원 상세정보</caption>
                <tr>
                    <th class="info_th">아이디</th>
                    <td class="info_td">test</td>
                    <th class="info_th">비밀번호</th>
                    <td class="info_td">●●●●●</td>
                </tr>
                <tr>
                    <th class="info_th">이름</th>
                    <td class="info_td">테스트</td>
                    <th class="info_th">회원번호</th>
                    <td class="info_td">#123456</td>
                </tr>
                <tr>
                    <th class="info_th">생년월일</th>
                    <td class="info_td">0000-00-00</td>
                    <th class="info_th">닉네임</th>
                    <td class="info_td">TT</td>
                </tr>
                <tr>
                    <th class="info_th">이메일</th>
                    <td class="info_td">aa@test.com</td>
                    <th class="info_th">회원등급</th>
                    <td class="info_td">
                        <select name="level">
                            <option value="0">::등급선택::</option>
                            <option value="1">동네인증회원</option>
                            <option value="2">일반회원</option>
                            <option value="3">계정정지</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <th class="info_th">이메일 수신</th>
                        <td colspan="3" class="info_td">
                            <input type="radio" name="email" checked="checked" value="예">예
                            <input type="radio" name="email">아니오</td>  
                </tr>        
                <tr>
                    <th class="info_th">SMS 수신</th>
                        <td colspan="3"class="info_td">
                            <input type="radio"name="sms" checked="checked" value="예">예
                            <input type="radio"name="sms">아니오</td>
                </tr>
                <tr>
                    <th class="info_th">주소</th>
                    <td colspan="3" class="info_td">서울 서초구 서초대로77길 55 에이프로스퀘어 3층</td>
                </tr> 
                <tr>
                    <th class="info_th" style="height: 100px;">관리자메모</th>
                    <td colspan="3" class="info_td"><textarea id="info_txt"></textarea></td>
                </tr>
            </table>
            <div class="info_btn">
                <button class="m_btn">확인</button>
                <button class="m_btn">목록</button>
            </div>    
        </section>
    </div>
</body>
</html>