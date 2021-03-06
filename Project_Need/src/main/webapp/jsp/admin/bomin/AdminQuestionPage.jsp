<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/public/style.css">
    <link rel="stylesheet" href="/css/bomin/AdminQuestionView.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <title>관리자 페이지</title>
<style>

</style>
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
            <li><a href="">접속통계</a></li>
        </ul>    
    
    </nav>

    <nav class="nav2 clearfix "> 
    <ul class="">
        <li><a href="broadcastList?categori=broad.html">전체</a></li>
        <li><a href="broadcastList?categori=broad.html">문의 관리 현황</a></li>
        <li><a href="broadcastList?categori=event">자주 질문 답변 목록</a></li>
        <li><a href="broadcastList?categori=info">안내</a></li>
    </ul> 
    </nav>
</header>
<section style="margin: 5% 5% 10% 5%;">
    <article>
        <div style="text-align: center; ">
            <div class="content_list_box" id="question_1">
                <h4 style="padding-top: 2%;">< 문의 관리 현황 ></h4>
                <table style="position: absolute; top: 25%; left: 14%;" id="list_table">
                    <tr>
                        <td class="view_td1 viewtd2">당일 문의 : 5건</td>
                        <td class="view_td1">미완료 문의 : 1231230건</td>
                    </tr>
                    <tr>
                        <td class="view_td viewtd2">완료 문의 : 12건</td>
                        <td class="view_td" id="question_list_view" onclick="location='aQuestionList.do'">문의 목록 보기</td>
                    </tr>
                </table>
            </div>
            <div class="content_list_box">
                <h4 style="padding-top: 2%;">&lt; 자주 질문 답변 관리 &gt;</h4>
                <div style="position: absolute; top: 35%; left: 14%;">
                    <div style="display: inline-block;" class="at_question"><a href="questionList.do">답변 목록</a></div>
                    <div style="display: inline-block;" class="at_question"><a href="aQuestionWrite.do">답변 작성</a></div>
                </div>
            </div>
        </div>
    </article>
</section>

</div>
</body>
</html>
