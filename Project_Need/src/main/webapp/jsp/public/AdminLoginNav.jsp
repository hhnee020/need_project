<%@page import="need.VO.NeedVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	boolean isLogin = Boolean.valueOf(request.getParameter("isLogin"));
	String name = request.getParameter("name");
	String a = request.getParameter("a");
	
%>
    
<img src="/images/src/Logo.png" class="logo">
<div class="login ">
    
	<%
		if(isLogin) {
	%>
		<ul class="nav1">
			<li><a href=""><%=name %></a></li>
			<li><a href="">로그아웃</a></li>
		</ul>
	<%
		} else {
	%>
		<ul class="nav1">
			<li><a href="">로그인</a></li>
		</ul>
	<%
		}
	%>
</div>
<nav class="nav clearfix "> 
    
	<ul class="">
		<li><a href="">공지사항</a></li>
		<li><a href="">회원정보</a></li>
		<li><a href="">게시판 관리</a></li>
		<li><a href="">관리자 관리</a></li>
		<li><a href="">문의 상담</a></li>
		<li><a href="">신고관리</a></li>
	</ul>    

</nav>