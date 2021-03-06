<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="/css/public/style.css">
    <link rel="stylesheet" href="/hani/css/self.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <title>관리자 계정 관리</title>
</head>

<script>
    function fn_SubmitPop(){
        var url = "adminAccountSubmit.jsp";
        var w = window.screen.width/2 - 250;
        var h = window.screen.height/2 - 150;
        
    	window.open(url,"adminAccountSubmit","width=500,height=300,left="+w+",top="+h  );
    }
    
    function fn_ModifyPop(){
	    var url = "adminAccountModify.jsp";
	    var w = window.screen.width/2 - 250;
	    var h = window.screen.height/2 - 150;
   	 	window.open(url,"adminAccountModify","width=500,height=300,left="+w+",top="+h  );
    }
   
    function fn_DeletePop(){
	    var url = "adminAccountDelete.jsp";
	    var w = window.screen.width/2 - 250;
	    var h = window.screen.height/2 - 150;
   	 	window.open(url,"adminAccountDelete","width=500,height=300,left="+w+",top="+h  );
    }

    
   
    
    </script>

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



<section class="sec1">

    <table class="table1 clearfix">
        
        <caption class="caption1" style ="font-size : 18px; text-align:left;" >관리자 계정 관리</caption>

      

        <colgroup>
            <col width="10%"/>
            <col width="10%"/>
            <col width="10%"/>
            <col width="20%"/>
            <col width="20%"/>
           
        </colgroup>
            
            
            
            <div class="btn1">
                <select name="" id="">
                <option value="">검색 조건</option>
                <option value="">검색 조건</option>
                <option value="">검색 조건</option>
                </select>
                
                <input type="text" style="width:30%">
                
                <button class="btn btn-primary" type="submit">조회</button>

         	</div>


            <div class = "btn0 btn1 btn2">
                <button class="btn  btn-primary" type="submit"
                onclick="fn_SubmitPop();">등록</button>
                <button class="btn  btn-primary" type="submit"
                onclick="fn_DeletePop();">삭제</button>
			</div>
	            <tr>
		            <th class="th1">
		                 <input type="checkbox">
                 	</th>
		            <th class="th1">번호</th>
		            <th class="th1">아이디</th>
		            <th class="th1">등급명</th>
		            <th class="th1">등록일시</th>
	            
	        	</tr>
	            <tr>
	                <th class="td1"><input type="checkbox"></th>
	                <th class="td1">1</th>
	                <th class="td1" >
	                	<a href= "javascript:fn_ModifyPop();">
	                		아이디1
	                	</a>
	                </th>
	                
		            <th class="td1">관리자</th>
	                <th class="td1"><a href="">등록일시</a></th>
            	</tr>
           
</table>




</section>

</div>


</body>
</html>
