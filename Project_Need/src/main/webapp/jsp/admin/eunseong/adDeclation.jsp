<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="kr">
 <head>
	<meta charset="UTF-8">
	<title>어드민 신고 관리</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    
  	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script type="text/javaScript" src="../script/select_date.js"></script>

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
						<option value ="">검색유형</option>
						<option value ="내용">닉네임</option>
						<option value ="제목">내용</option>
					</select>
						<input type ="text" placeholder="검색어를 입력해주세요" style ="height:18px;">
						<button type="button">검색</button>
				<div style ="text-align:left;">
				<span>신고 기간 | </span>
				<input type ="text" name ="sdate" id = "sdate"  >
				~
				<input type ="text" name ="edate" id = "edate" >
				<button type="button">오늘</button>
				<button type="button">하루전</button>
				<button type="button">1주일</button>
				<button type="button">1개월</button>
				</div>
				<div style ="text-align:left;">
				<span>신고 유형 |</span>
					<select>
						<option value ="">유형 선택</option>
						<option value ="동네">유형1</option>
						<option value ="마켓">유형2</option>
						<option value ="마켓">유형3</option>
					</select>
					<span>처리</span>
					<select>
						<option value ="미처리">미처리</option>
						<option value ="처리">처리</option>
					</select>
				</div>
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
						<th class="main_th"><input type ="checkbox"></th>
						<th class="main_th">번호</th>
						<th class="main_th">신고 유형</th>
						<th class="main_th">신고 내용</th>
						<th class="main_th">신고인</th>
						<th class="main_th">신고 등록일</th>
						<th class="main_th">처리상태</th>
					</tr>
					<tr>
						<td><input type ="checkbox"></td>
						<td>105</td>
						<td>유형1</td>
						<td>노트북을 가지고 도망쳤어요</td>
						<td>홍길동</td>
						<td>2021.10.10</td>
						<td>처리</td>
					</tr>
					<tr>
						<td><input type ="checkbox"></td>
						<td>104</td>
						<td>유형4</td>
						<td>사기꾼이에요</td>
						<td>사과맨</td>
						<td>2021.10.10</td>
						<td>처리</td>
					</tr>
					<tr>
						<td><input type ="checkbox"></td>
						<td>103</td>
						<td>유형3</td>
						<td>개인정보를 요구합니다</td>
						<td>사과맨</td>
						<td>2021.10.10</td>
						<td>처리</td>
					</tr>
					<tr>
						<td><input type ="checkbox"></td>
						<td>102</td>
						<td>유형1</td>
						<td>입금을 하지않았습니다</td>
						<td>가나다</td>
						<td>2021.10.10</td>
						<td>미처리</td>
					</tr>
					<tr>
						<td><input type ="checkbox"></td>
						<td>101</td>
						<td>유형3</td>
						<td>노트북을 가지고 도망쳤어요</td>
						<td>사과맨</td>
						<td>2021.10.10</td>
						<td>미처리</td>
					</tr>
				</table>
			</div>
		<div style ="text-align:left; margin-left:20px; margin-top:10px;">
		<button type="button">전체해제</button>
		<button type="button">전체 삭제</button>
		</div>
		<div style ="text-align:center;">
		<span>처음으로/이전  123 124 125 126 127 <b>128</b> 다음 /마지막</span>
		</div>
	</div>

		</article>
	</section>

	<footer>
				
	</footer>
	</div>
</body>
</html>