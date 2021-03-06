<%@page import="need.VO.NeedVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/public/style.css">
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="js/public/postEditor.js"></script>
    <link rel="stylesheet" href="css/public/postEditor.css"></link>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">


    <title>자주하는 질문 답변 작성</title>
    <script>
        $(function(){
            
            $("#btn").click(function (){
                var frm = new FormData($("#frm")[0]);
            // frm.append('content',createViewFactory());
            //  console.log(createViewFactory());
           		var content = createViewFactory();
           		console.log(content);
            	frm.append('content',content);
                $.each($(postRealFile), function(i,item){
                    frm.append('file',item);
                })
                console.log(frm.get('file'));
                $.each($(uuid), function(i,item){
                    frm.append('uuid',item);
                    console.log(item);
                })
                console.log(frm.get('uuid'));
                
                $.ajax({
                    type: "post",
                    url: "filetest.do",
                    data: frm,
                    contentType: false,
                    processData: false,
                    dataType: "text",
                    success: function(data){
                        if(data=="ok") alert("ok");
                        else alert("no");
                    },
                    error: function(data){
                        alert('error');
                    }
                })
            })
        })
    </script>
    
	<script>
	    function fn_popup1(){
	        var url = "";
	        window.open(url,"_blank","width=400, height=430");
	    }
	
	</script>

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


</header>
</div>
	    <form id="frm" name="frm" enctype="multipart/form-data" >
    <div style="margin: 5%; display: flex; justify-content: center; margin-bottom: 0;">
        <div class="sec1" style="margin-top: -5%; width: 1200px;  margin-bottom: 0; ">
            
	        <div style="text-align: left;">
	            <label for="categori">분류</label>
	            <select id="categori">
	                <option>정보/보안</option>
	                <option>이용 문의</option>
	                <option>사기 피해</option>
	            </select>
	        </div>
        
		<%@ include file="/jsp/public/EditorToolbar.jsp" %>
	        <div id="editor" contenteditable="true"></div>
            
        </div>
    </div>
    <div style="margin:2% 5% 0% 5%; display: flex; justify-content: center; ">
        <div id="date_div" style="border-top: 1.5px solid #000; width: 1200px; text-align: left; padding-top: 1%;  font-size: 1.3em;">
            
        </div>
    </div>
    <div style="width:100%; text-align: center;" >
    
    	<button class="btn btn-primary" id="btn" type="button" style="background-color: #04b4f6; border: #04b4f6;">저장</button>
    </div>
</form>
</body>
</html>
