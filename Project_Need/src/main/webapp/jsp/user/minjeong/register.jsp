<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   	<link rel="stylesheet" href="/css/public/User_view_style.css">
    <link rel="stylesheet" href="/css/minjeong/memberPage.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <title>회원가입</title>
</head>
<body>
<div id="wrap">

    <div style="padding-top: 1.5%; text-align: center;">
        <img src="/images/src/Logo.png" class="logo" style="margin-top: -1.5%;">
        <div style="margin:0; width: 80%; display: flex; ">
            <form>
                <div>
                    <div class="col-lg-6" style="width: 500px;">
                        <div class="input-group">
                            <input type="text" class="form-control" name="search"placeholder="동네이름, 물품명, @아이디 검색">
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
	                    <a href="myAct.do">닉네임</a></li>
	                <li>
	                    <a href="myInfo.do">정보수정</a></li>
                    <li>
                        <a href="">로그아웃</a></li>
                </ul>
            </div >
        </div>
    </div>



    <section class="sec1">

        <div class="agreearea">
            <h4>이용약관 동의</h4>
            <div class="agree">      
            </div>
            <div class="agckbox">동의합니다.
                    <input type="checkbox" name="agree" id="agree2"></div>       
            
            <h4>개인정보 제3자 제공 동의(선택)</h4>
            <div class="agree">
            </div>
            <div class="agckbox">동의합니다.
                <input type="checkbox" name="agree" id="agree2"></div>  

        </div>



        <div class="info_btn">
            <button class="m_btn">회원가입</button>
        </div>    
   
    </section>  
</div>
</body>
</html>