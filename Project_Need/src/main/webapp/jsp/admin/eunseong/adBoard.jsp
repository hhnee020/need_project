<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="need.VO.NeedVO"%>

<!DOCTYPE html>
<html lang="kr">
 <head>
	<meta charset="UTF-8">
	<title>어드민 게시판관리</title>
   <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
	
	<link rel="stylesheet" href="/css/public/jquery_ui.css">
	<link rel="stylesheet" href="/css/public/style.css">
	<link rel="stylesheet" href="/css/eunseong/ad_all.css">
	
  
    <script>
        function fn_popup1(){
            var url = "adKategorieList.jsp";
            var winl = (screen.width-500) / 2;
            var wint = (screen.height-350) / 2;
            window.open(url, '', 'status=no, height=' + 350  + ', width=' + 500  + ', left='+ winl + ', top='+ wint);
        }
     </script>
 </head>

<body>

	<div id="wrap">
		
	<header class="clearfix">
		<img src="/images/src/Logo.png" class="logo">
		
	<jsp:include page="/jsp/public/AdminLoginNav.jsp" flush="false">
		<jsp:param value="true" name="isLogin"/>
	</jsp:include>
	
		<nav class="nav2 clearfix "> 
		<ul class="">
			<li><a href="adminAccountList.jsp">관리자 계정 관리</a></li>
			<li><a href="/jsp/admin/hani/adminNotice.jsp">관리자 공지사항 관리</a></li>
		</ul> 
		</nav>


	</header>
	<section>
		<aside>
		
		</aside>
		<article>
	<div style = "width:700px; padding-left:70px; ">

			<div style ="width:700px; text-align:left; margin-left:15px;">
				<button type ="button" class= "nav_button" onclick="location='adBoard.jsp' ">게시판 관리</button>
				<button type ="button" class= "nav_button" onclick="location='adIntegrated.jsp' ">통합 관리</button>
				<button type ="button" class= "nav_button" onclick="location='adComment.jsp' ">댓글 관리</button>
				<button type ="button" class= "nav_button" onclick="location='adDeclation.jsp' ">신고 게시판</button>
				<button type="button"  class= "nav_button" onclick="fn_popup1(); return false;">카테고리 관리</button>			
				</div>
			<div style = "width:600px; border:1px solid #ffffff;  text-align:left; ">
			<span>검색  | </span><select>
					<option value ="분류">분류</option>
					<option value ="커뮤니티">커뮤니티</option>
					<option value ="마켓">마켓</option>
				</select>
					<input type ="text" placeholder="검색어를 입력해주세요" style ="height:18px;" >
					<button type="button">검색</button>
			</div>
			<div style ="width:600px;">
				<div style ="text-align:left;">
				<span>총 검색 갯수 : 15개</span>
				</div>
				<!--<div style ="float:right;">
				 예전 추가 자리
				</div>   -->
			</div>	
			<div style ="width:600px;">
				<table class= "main_table">
					<tr style ="background-color:#04b4f6; text-align:center;">
						<th class="main_th">번호</th>
						<th class="main_th">분류</th>
						<th class="main_th">게시판명</th>
						<th class="main_th">노출상태</th>
						<th class="main_th">글쓰기</th>
						<th class="main_th">내용</th>
						<th class="main_th">답글</th>
						<th class="main_th">기능</th>
					</tr>
					<tr>
						<td>1</td>
						<td>마켓</td>
						<td>판매 게시판</td>
						<td>노출</td>
						<td>전체</td>
						<td>전체</td>
						<td>전체</td>
						<td>수정/삭제</td>
					</tr>
						<tr>
						<td>2</td>
						<td>마켓</td>
						<td>판매 게시판</td>
						<td>노출</td>
						<td>전체</td>
						<td>전체</td>
						<td>전체</td>
						<td>수정/삭제</td>
					</tr>
						<tr>
						<td>3</td>
						<td>마켓</td>
						<td>판매 게시판</td>
						<td>노출</td>
						<td>전체</td>
						<td>전체</td>
						<td>전체</td>
						<td>수정/삭제</td>
					</tr>
					<tr>
						<td>4</td>
						<td>커뮤니티</td>
						<td>동네 질문</td>
						<td>노출</td>
						<td>전체</td>
						<td>전체</td>
						<td>전체</td>
						<td>수정/삭제</td>
					</tr>
					<tr>
						<td>5</td>
						<td>커뮤니티</td>
						<td>동네 질문</td>
						<td>노출</td>
						<td>전체</td>
						<td>전체</td>
						<td>전체</td>
						<td>수정/삭제</td>
					</tr>
					<tr>
						<td>6</td>
						<td>커뮤니티</td>
						<td>동네 질문</td>
						<td>노출</td>
						<td>전체</td>
						<td>전체</td>
						<td>전체</td>
						<td>수정/삭제</td>
					</tr>
					<tr>
						<td>7</td>
						<td>커뮤니티</td>
						<td>동네 질문</td>
						<td>노출</td>
						<td>전체</td>
						<td>전체</td>
						<td>전체</td>
						<td>수정/삭제</td>
					</tr>
					
				</table>
			</div>
	</div>

		</article>
	</section>

	<footer>
				
	</footer>
	</div>

</body>
</html>
