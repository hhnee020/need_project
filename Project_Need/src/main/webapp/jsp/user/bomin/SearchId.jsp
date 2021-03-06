<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/bomin/popup.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <title>아이디 찾기</title>

</head>
<body>
    <div style="width: 500px; height: 350px; padding:5% 0% 5% 5%; margin: 0 auto;">
        <p id="id_p">아이디 찾기</p>
        <div id="line"></div>
        <div style="padding-left: 10%;">
            <p style="margin-top: 30px;">가입한 휴대번호</p>
            <input type="text" placeholder="010-1234-1234" style="width: 250px; height: 33px; margin-top: 0%;"> <button class="btn btn-primary" type="submit">전송</button>
            
            <p style="margin-top: 20px;">받은 인증코드</p>
            <input type="text" style="width: 250px; height: 33px; margin-top: 0%;"> <button class="btn btn-primary" type="submit">인증</button>
        </div>
        <div style="width: 90%; text-align: center; margin-top: 5%;">
            <button class="btn btn-primary" type="submit">확인</button>
            <button class="btn btn-primary" type="submit" style="background-color: #b6b6b6; border-color: #b6b6b6;">닫기</button>
        </div>
    </div>
</body>
</html>