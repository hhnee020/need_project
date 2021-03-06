<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/public/postEditor.css"></link>
    <link rel="stylesheet" href="/css/public/style.css">
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="js/public/postEditor.js"></script>

    <title>Need</title>
    <style>
        #title{
            width: 700px; 
            height: 30px;
            text-align: left;
            padding-left: 2%;
            outline-style: none;
        }
    </style>
    
    
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
</head>
<body>
    <div id="wrap">
        <div style="padding-top: 1.5%;">
            <img src="images/src/Logo.png" class="logo" style="margin-top: -1.5%;">
            <div style="margin:0; width: 80%; display: flex; ">
                <form>
                    <div>
                        <div class="col-lg-6" style="width: 500px;">
                            <div class="input-group">
                                <input type="text" class="form-control" name="search"placeholder="????????????, ?????????, @????????? ??????">
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="button">
                                        <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
                                    </button>
                                </span>
                            </div><!-- /input-group -->
                        </div><!-- /.col-lg-6 -->
                    </div><!-- /.row -->
                </form>
                <div class="login" style="width: 400px;">
                    <ul class="nav1">
                        <li>
                            <a href="">?????????</a></li>
                        <li>
                            <a href="">????????????</a></li>
                        <li>
                            <a href="">????????????</a></li>
                    </ul>
                </div >
            </div>
        </div>

        <section style="margin-top: 10%; height: 1000px;">
            <h3 style="margin-bottom: 7%;">?????? ??????</h3>
	    <form id="frm" name="frm" enctype="multipart/form-data" >
                <div style="margin: 5%; display: flex; justify-content: center; margin-bottom: 0;">
                    <div class="sec1" style="margin-top: -5%; width: 1200px;  margin-bottom: 0; ">
                        <div style="border-bottom: 1px solid #555; margin-bottom: 3%;"></div>
                        
                    <div style="text-align: left;">
                        <label for="categori" style="margin-right: 1%;">?????? </label>
                        <select id="categori">
                            <option>??????/??????</option>
                            <option>?????? ??????</option>
                            <option>?????? ??????</option>
                        </select>
                    </div>
                    <div style="text-align: left; margin:2% 0% 2% 0%;">
                        <label for="title" style="margin-right: 1%;">??????</label>
                        <input type="text" id="title">
                    </div>
                    
				<%@ include file="/jsp/public/EditorToolbar.jsp" %>
			        <div id="editor" contenteditable="true"></div>
                        
                    </div>
                </div>
                <div style="margin:2% 5% 0% 5%; display: flex; justify-content: center; ">
                    <div id="date_div" style="border-top: 1.5px solid #000; width: 970px; padding-top: 1%;  font-size: 1em;text-align: left;">
                        <p style="text-align: left; margin-bottom: 5%; font-size: 1.2em;">?????? ????????????</p>
                        <p style="text-align: left;">??? ?????? ?????? ??? ?????? ??? ???????????? ????????? ????????????.</p>
                        <label for="email_yes" style="font-weight: normal;">????????? ??????</label>
                        <input type="checkbox" id="email_yes" style="margin-bottom: 5%;">

                        <p style="text-align: left;">??? ?????? ?????? ??? ?????? ??? ??????????????? ????????? ????????????.</p>
                        <label for="SNS_yes" style="font-weight: normal;">?????? ????????? ??????</label>
                        <input type="checkbox" id="SNS_yes">
                    </div>
                    
                </div>
                
			    <div style="width:100%; text-align: center;" >
			    
			    	<button class="btn btn-primary" id="btn" type="button" style="background-color: #04b4f6; border: #04b4f6;">??????</button>
			    </div>
            </form>
        </section>
        
    </div>
    
</body>
</html>