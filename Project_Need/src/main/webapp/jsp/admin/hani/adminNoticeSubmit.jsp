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
    <link rel="stylesheet" href="../css/hani/self.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <title>Document</title>
</head>
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
	
	
		
    <nav class="nav2 clearfix "> 
    <ul class="">
        <li><a href="broadcastList?categori=broad.html">전체</a></li>
        <li><a href="broadcastList?categori=broad.html">공지사항</a></li>
        <li><a href="broadcastList?categori=event">이벤트</a></li>
        <li><a href="broadcastList?categori=info">안내</a></li>
        <li><a onclick="fn_popup1(); return false;">테스트</a></li>
    </ul> 
    </nav>
    
        <nav class="nav2 clearfix "> 
        <ul class="">
            <li><a href="adminAccountList.html">관리자 계정 관리</a></li>
            <li><a href="admintGrant.html">관리자 권한 관리</a></li>
            <li><a href="admintNotice.html">관리자 공지사항 관리</a></li>
        </ul> 
        </nav>
    
    
    </header>
</div>

<table class="popupadm1" style="width: 800px;">


    <caption class="caption1"><h3>관리자 공지사항 등록</h3></caption>
    <colgroup>
        <col width="10%"/>
        <col width="50%"/>
        <col width="*%"/>
    </colgroup>


    <tr class="notice_tr">
        <th class="th1">아이디 </th>
        <td>아이디</td>
    </tr>


    <tr class="notice_tr">
        <th class="th1">제목</th>
        <td><input type="text" style="width: 200px;"></td>
       
    </tr>
    
    <tr class="notice_tr">
        <th class="th1">내용</th>
        <td style="padding: 10px; "><textarea name="" id="" cols="30" rows="10" style="width: 600px;" ></textarea></td>
       
    </tr>
    
</table>



    <div class="popupbtn1 div1" style="text-align: center; margin-top: 10px;" >
        <input type="submit" value="저장" class="btn  btn-primary" onclick="fn_submit(); return false;">
        <input type="reset" value="재설정" class="btn  btn-primary">
    </div>

</body>
</html>
