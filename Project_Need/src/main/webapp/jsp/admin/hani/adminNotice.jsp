<%@page import="need.VO.NeedVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../css/public/style.css">
    <link rel="stylesheet" href="../..css/hani/self.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <title>관리자 공지사항 관리</title>
</head>

<script>
    
function newPage1()  {
  window.open('adminNoticeSubmit.html');
}
function newPage2()  {
  window.open('adminNoticeModify.html');
}


</script>

<body>

<div id="wrap">

<header class="clearfix">
      
     <%NeedVO vo = (NeedVO) request.getAttribute("type"); %>
	<jsp:include page="/jsp/public/AdminLoginNav.jsp" flush="false">
		<jsp:param value="true" name="isLogin"/>
	</jsp:include>
		<%--  <jsp:param value="${name }" name="name"/>
		<jsp:param value="false" name="isLogin"/>
		<jsp:param value="<%vo.getA();%>" name="voA"/>  --%>
<!-- -------------------------------------------------------- -->

    <nav class="nav2 clearfix "> 
    <ul class="">
        <li><a href="adminAccountList.html">관리자 계정 관리</a></li>
        <li><a href="admintGrant.html">관리자 권한 관리</a></li>
        <li><a href="admintNotice.html">관리자 공지사항 관리</a></li>
    </ul> 
    </nav>


</header>



<section class="sec1">

    <table class="table1 clearfix">
        
        <caption class="caption1"><h5 style="text-align: left;">관리자 공지사항 관리</h5></caption>

      

        <colgroup>
            <col width="10%"/>
            <col width="10%"/>
            <col width="10%"/>
            <col width="10%"/>
            <col width="30%"/>
            <col width="20%"/>
           
        </colgroup>
            
            
            <div class="btn1" style="text-align: center; margin-top: 10px";>
                <select name="" id="">
                <option value="">검색 조건</option>
                <option value="">검색 조건</option>
                <option value="">검색 조건</option>
                </select>
                
                <input type="text" style="width:30%">
                
                <button class="btn btn-primary" type="submit">조회</button>

                 </div>


                <div class="btn0 btn1 btn2 ">
                <button class="btn  btn-primary" type="submit" onclick="newPage1()">등록</button>
                <button class="btn  btn-primary" type="submit" onclick="newPage2()">수정</button>
                
                
               

                <tr>
                <th class="th1">
                    <input type="checkbox"></th>
                <th class="th1">번호</th>
                <th class="th1">아이디</th>
                <th class="th1">권한명</th>
                <th class="th1">제목</th>
                <th class="th1">등록일시</th>
                <th class="th1">삭제</th>
            </tr>
            <tr>
                <th class="td1"><input type="checkbox"></th>
                <th class="td1">1</th>
                <th class="td1" ><a href="">아이디1</a>
                </th>
                
                <th class="td1"><a href="adminGrantSubmit.html" onClick="window.open(this.href, '', 'width=400, height=430'); return false;">관리자</a></th>
                <th class="td1"><a href="">제목</a></th>
                <th class="td1"><a href="">등록일시</a></th>
                <th class="td1" > <a href="" style="color: #04b4f6">삭제</a></th>
            </tr>

</table>

</section>

</div>


</body>
</html>
