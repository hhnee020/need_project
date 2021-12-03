<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../../css/style.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

    <title>Need-공지사항 목록</title>

</head>

<body>

<div id="wrap">

<header class="clearfix">
    <img src="../../../src/Logo.png" class="logo">
    

    <div class="login">
        
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
        <li><a href="broadcastList?categori=broad.html">공지사항</a></li>
        <li><a href="broadcastList?categori=event">이벤트</a></li>
        <li><a href="broadcastList?categori=info">안내</a></li>
    </ul> 
    </nav>


</header>


<section class="sec1">

    <table class="table1 clearfix">
        
        <caption class="caption1"><h2>전체 목록</h2></caption>

      

            <colgroup>
                <col width="5%"/>
                <col width="5%"/>
                <col width="10%"/>
                <col width="10%"/>
                <col width="55%"/>
                <col width="20%"/>
            </colgroup>
            
            
            <div class="btn1">
                <select name="" id="">
                <option value="">검색 조건</option>
                <option value="">제목</option>
                <option value="">내용</option>
                </select>
                
                <input type="text" style="width:30%">
                
                <button class="btn btn-primary" type="submit">조회</button>

                 </div>


                <div class="btn0 btn1 btn2 ">
                    <button class="btn btn-primary" type="submit">
                        <a>등록</a></button>
                    <button class="btn btn-primary" type="submit">
                        <a>삭제</a></button>
                </div>
                
               

                <tr>
                <th class="th1"><input type="checkbox"></th>
                <th class="th1">번호</th>
                <th class="th1">분류</th>
                <th class="th1">아이디</th>
                <th class="th1">제목</th>
                <th class="th1">등록일시</th>
            </tr>
            <tr>
                <th class="td1"><input type="checkbox"></th>
                <th class="td1">1</th>
                <th class="td1">공지</th>
                <th class="td1" ><a href="">관리자</a></th>
                
                <th class="td1"><a href="adminGrantSubmit.html">첫 글입니다.</a></th>
                <th class="td1">21.10.29</th>
            </tr>

</table>

</section>
</div>


</body>
</html>
