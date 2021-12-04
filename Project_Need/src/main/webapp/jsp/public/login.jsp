<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/public/style.css">
    <link rel="stylesheet" href="/css/public/login.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <title>Need</title>
	<script>

    function searchId_popup(){
        var url = "searchId.do";
        var winl = (screen.width-500) / 2;
        var wint = (screen.height-350) / 2;
        window.open(url, '', 'status=no, height=' + 350  + ', width=' + 500  + ', left='+ winl + ', top='+ wint);
    }
    function searchPw_popup(){
        var url = "searchPw.do";
        var winl = (screen.width-500) / 2;
        var wint = (screen.height-350) / 2;
        window.open(url, '', 'status=no, height=' + 350  + ', width=' + 500  + ', left='+ winl + ', top='+ wint);
    }
	</script>
</head>
<body>
    
    <div id="wrap">
        <header>
            <div style="padding-top: 1.5%;">
                <img src="images/src/Logo.png" class="logo" style="margin-top: -1.5%;">
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
                                <a href="">이보민</a></li>
                            <li>
                                <a href="">정보수정</a></li>
                            <li>
                                <a href="">로그아웃</a></li>
                        </ul>
                    </div >
                </div>
            </div>
        </header>
            <article style="text-align: center;">
                <form>
                    <div style="margin-top: 22%;">
                        <input type="text" placeholder="ID" class="login_box" id="id">
                        <div style="margin:0.5%"></div>
                        <input type="text" placeholder="PW" class="login_box" id="pw">
                    </div>
                    <div style="margin:0.5%"></div>
                    <button class="btn btn-primary" type="submit" style="width: 350px; height: 70px; font-size: 1.7em;">로그인</button>
                    <div style="text-align: left; margin:0 35.5% 0 35.5%;">
                        <input type="checkbox" name="id_memory" id="id_memory">
                        <label for="id_memory">ID 저장</label>
                    </div>
                </form>
                <div style="width: 350px;">
                    <ul id="login_ul" style="list-style: none; margin-top: 5%;">
                        <li>회원가입</li>
                        <li><a onclick="searchId_popup(); return false;">아이디 찾기</a></li>
                        <li><a onclick="searchPw_popup(); return false;">비밀번호 찾기</a></li>
                    </ul>
                </div>
            </article>
            <article style="margin-top: 5%;">
                <div style="width: 25%; height: 50px; border-top: 1px solid #555; text-align: center; position: relative;">
                    <span style="position: absolute; background-color: white; top: -20%; left: 40%; width: 60px;">또는</span>
                    <ul id="outside_login" style="margin-top: 7%;">
                        <li> <a><img src="images/src/kakaotalk.png"></a> </li>
                        <li> <a><img src="images/src/facebook.png"></a> </li>
                        <li> <a><img src="images/src/google.png"></a> </li>
                    </ul>
                </div>
            </article>

    </div>
</body>
</html>