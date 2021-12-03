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
    <!-- include libraries(jQuery, bootstrap) -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <!-- include summernote css/js -->
    <script type="text/javaScript" src="../../script/create_date.js"></script>
    <script type="text/javaScript" src="../../script/hide_select_date.js"></script>
    <script type="text/javaScript" src="../../../js/postEditor.js"></script>
    <link rel="stylesheet" href="../../../css/postEditor.css">
    <title>공지사항 글 작성</title>
</head>
<body>

<div id="wrap">

    <header class="clearfix">
        <img src="../../../src/Logo.png" class="logo">
        <div class="login ">
            <ul class="nav1">
                <li><a href="">관리자</a></li>
                <li><a href="">로그아웃</a></li>
            </ul>
        </div>
        
        <nav class="nav clearfix "> 
            <ul class="">
                <li><a href="">공지사항</a></li>
                <li><a href="">회원정보</a></li>
                <li><a href="">게시판 관리</a></li>
                <li><a href="">관리자 관리</a></li>
                <li><a href="">문의 상담</a></li>
                <li><a href="">접속통계</a></li>
            </ul>    
        </nav>
        <script>
            function fn_popup1(){
                var url = "";
                window.open(url,"_blank","width=400, height=430");
            }
        </script>
        <nav class="nav2 clearfix "> 
            <ul class="">
                <li><a href="broadcastList?categori=broad.html">전체</a></li>
                <li><a href="broadcastList?categori=broad.html">공지사항</a></li>
                <li><a href="broadcastList?categori=event">이벤트</a></li>
                <li><a href="broadcastList?categori=info">안내</a></li>
                <li><a onclick="fn_popup1(); return false;">테스트</a></li>
            </ul> 
        </nav>
    </header>
</div>
<form method="post" id="frm" name="frm" enctype="multipart/form-data">
    <div style="margin: 5%; display: flex; justify-content: center; margin-bottom: 0;">
        <div class="sec1" style="margin-top: -5%; width: 1200px;  margin-bottom: 0; ">
            
            <div style="text-align: left;">
                <label for="categori">분류</label>
                <select id="categori">
                    <option>공지사항</option>
                    <option>안내</option>
                    <option>이벤트</option>
                </select>
            </div>
            
            <!-- 글쓰기 div-->
            <div class="editor-menu">
                <button class="editor_btn" type="button" id="btn-bold"><b>B</b></button>
                <button class="editor_btn" type="button" id="btn-italic"><i>I</i></button>
                <button class="editor_btn" type="button" id="btn-underline"><u>U</u></button>
                <button class="editor_btn" type="button" id="btn-strike"><s>S</s></button>
                <button class="editor_btn" type="button" id="btn-left">좌측 정렬</button>
                <button class="editor_btn" type="button" id="btn-center">중앙 정렬</button>
                <button class="editor_btn" type="button" id="btn-right">우측 정렬</button>
                <button class="editor_btn" type="button" id="btn-img">Img</button>
                <input type="file" id="img" name="imgfile" multiple>
            </div>
            <div id="editor" contenteditable="true"><br /></div>
            <!-- 글쓰기 div-->
        </div>
    </div>
    <div style="margin:2% 5% 0% 5%; display: flex; justify-content: center; ">
        <div id="date_div" style="border-top: 1.5px solid #000; width: 1200px; text-align: left; padding-top: 1%;  font-size: 1.3em;">
            <span style="padding-left: 5%; padding-right: 2%;">등록시간</span>
            <label style="padding-right: 1%;">
                <input type="radio" name="wirte_date" value="now" checked  class="date" >현재</label>
            <label>
                <input type="radio" name="wirte_date" value="reservation"  class="date">예약설정</label>
                <div id="date_select_box" style="display: inline-block;">
                    <select id="month"></select><span>월</span>
                    <select id="date"></select><span>일</span>
                    <span style="width: 30px;"></span>
                    <select id="hour"></select><span>시</span>
                    <select id="min"></select><span>분</span>
                </div>
        </div>
    </div>
    <button class="btn btn-primary" type="submit" id="btn_save" style="background-color: #04b4f6; border: #04b4f6;">저장</button>
</form>
</body>
</html>
