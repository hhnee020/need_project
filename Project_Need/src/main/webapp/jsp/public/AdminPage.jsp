<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/public/style.css">
    <link rel="stylesheet" href="/css/bomin/AdminPage.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <title>관리자 페이지</title>

</head>


<body>

<div id="wrap">

<header class="clearfix">
    <img src="images/src/Logo.png" class="logo">
    <div class="login ">
        
        <ul class="nav1">
        <li>
            <a href="">관리자</a></li>
        <li>
            <a href="">로그아웃</a></li>

    </ul>
    </div>
    
</header>
<section style="margin-top: 10%;">
    <article>
        <div>
            <table>
                <tr>
                    <td onclick="location.href= '' ">회원 관리</td>
                    <td onclick="location.href= '' ">게시판 관리</td>
                    <td onclick="location.href= '' ">관리자 관리</td>
                </tr>
                <tr>
                    <td onclick="location.href= '' ">공지사항 관리</td>
                    <td onclick="location.href='aQuestionPage.do'">상담문의 관리</td>
                    <td onclick="location.href='aDeclationList.do'">신고 관리</td>
                </tr>
            </table>
        </div>
    </article>
</section>

</div>
</body>
</html>
