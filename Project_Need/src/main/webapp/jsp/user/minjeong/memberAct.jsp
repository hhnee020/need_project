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
    <title>타회원활동</title>
</head>

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
    
    <section class="sec2">
       
        <div class="act1">
            <div id="myimg">프로필사진</div> <div id="name">닉네임(아이디)</div>
            <div id="fw_btn"><button>팔로우</button></div>
            <div class="follow2">
            <ul class="fl">
                <li>팔로잉 00</li>
                <li>팔로워 00</li>
            </ul>
            </div>    
        </div>

        <div class="act2">
            <div class="tabs">
                <input id="sale" type="radio" name="tab_item" checked>
                <label class="tab_item" for="sale">판매상품</label>
                <input id="pick" type="radio" name="tab_item">
                <label class="tab_item" for="pick">찜목록</label>
                <input id="post" type="radio" name="tab_item">
                <label class="tab_item" for="post">작성한 글</label>
                <input id="comment" type="radio" name="tab_item">
                <label class="tab_item" for="comment">작성한 댓글</label>
                <input id="like" type="radio" name="tab_item">
                <label class="tab_item" for="like">좋아요</label>
                
                <div class="tab_content" id="sale_content">
                    작성한 판매글 목록 출력
                </div>
                <div class="tab_content" id="pick_content">
                    내가 찜한 물품목록 출력
                </div>
                <div class="tab_content" id="post_content">
                   내가 쓴 글
                </div>
                <div class="tab_content" id="comment_content">
                    내가 쓴 댓글
                </div>
                <div class="tab_content" id="like_content">
                   나의 좋아요 목록
                </div>  
               
            </div>

        </div>
    </section>
         </div>
</body>
</html>