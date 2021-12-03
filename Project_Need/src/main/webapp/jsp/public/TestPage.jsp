<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="js/public/postEditor.js"></script>
    <link rel="stylesheet" href="css/public/postEditor.css"></link>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <title>Document</title>
    <style>
    	#editor {
    		height: 500px;
    	}
    </style>
    <script>
        $(function(){
            
            $("#btn").click(function (){
                var frm = new FormData($("#frm")[0]);
            // frm.append('content',createViewFactory());
            //  console.log(createViewFactory());
            	frm.append('content',createViewFactory());
                $.each($(postRealFile), function(i,item){
                    frm.append('file',item);
                })
                $.each($(uuid), function(i,item){
                    frm.append('uuid',item);
                    console.log(item);
                })
                
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
    
</head>
<body>
	<div style="width: 1000px; text-align: center;">
		<%@ include file="/jsp/public/EditorToolbar.jsp" %>
	    <form id="frm" name="frm" enctype="multipart/form-data" >
	        <div id="editor" contenteditable="true"></div>
	    </form>
	    <button type="button" id="btn">전송</button>
	</div>
</body>
</html>