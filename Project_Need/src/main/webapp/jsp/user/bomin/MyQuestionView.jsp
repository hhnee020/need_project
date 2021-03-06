<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/public/User_view_style.css">
    <link rel="stylesheet" href="/css/bomin/MyQuestionView.css">
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <title>Need</title>

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
                        <a href>정보수정</a></li>
                    <li>
                        <a href="">로그아웃</a></li>
                </ul>
            </div >
        </div>
    </div>

<section>
    <article style="margin: 5% 5% 10% 5%;">
        <div id="header_whiteSpace" >
            <div id="backList">
                <button type="button" class="btn btn-primary" style="background-color: #04b4f6; border-color: #04b4f6;">목록으로</button>
                <span style="padding-left: 2%;">작성 시간 : 2021-02-22</span>
            </div>
            <table id="question_table">
                <colgroup>
                    <col style="width: 10%;">
                    <col style="width: 90%;">
                </colgroup>
                <tr>
                    <th>제목</th>
                    <td class="td">아이디를 해킹 당한 것 같아요</td>
                </tr>
                <tr>
                    <th>분류</th>
                    <td class="td">정보/보안</td>
                </tr>
                <tr>
                    <th>내용</th>
                    <td class="content" ><div style="display: inline-block;"><span>아이디를 해킹 당한 것 같아요ddddddd</span></div></td>
                </tr>
            </table>

            
            <table class="reply_colum" id="reply_table">
                <colgroup>
                    <col style="width: 10%;">
                    <col style="width: 90%;">
                </colgroup>
                <th id="reply" class="reply_colum">답변</th>
                <td class="content reply_colum" id="reply_content"><div style="display: inline-block;"><span>헐 해킹당하셨군요..유감</span></div></td>
            </table>
        </div>
    </article>
</section>

</div>
</body>
</html>