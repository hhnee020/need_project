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
    <link rel="stylesheet" href="/css/bomin/MyQuestionList.css">
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <title>Need</title>

</head>


<body>

<div id="wrap">
    <div style="padding-top: 1.5%;">
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
                        <a href="">이보민</a></li>
                    <li>
                        <a Search>정보수정</a></li>
                    <li>
                        <a href="">로그아웃</a></li>
                </ul>
            </div >
        </div>
    </div>

<section>
    <article style="margin: 5% 5% 10% 5%;">
        <h3 style="padding:5% 0% 5% 0%; font-weight: bold;">내 문의 목록</h3>
        <div style="margin-bottom: 2%;">
            <table>
                <tr>
                    <td>상태</td>
                    <td>분류</td>
                    <td class="td_center">제목</td>
                    <td>시간</td>
                </tr>
                <tr>
                    <td><span class="unreply">미답변</span></td>
                    <td>이용 문의</td>
                    <td class="td_center"><a href="#">구 · 판매에서 허용하는 범위가 있나요?</a></td>
                    <td>21/02/25</td>
                </tr>
                <tr>
                    <td><span class="tbc">검토중</span></td>
                    <td>정보/보안</td>
                    <td class="td_center"><a href="#">제 아이디 해킹당한거 같아요</a></td>
                    <td>21/02/21</td>
                </tr>
                <tr>
                    <td><span class="reply">답변</span></td>
                    <td>사기 피해</td>
                    <td class="td_center"><a href="#">사기를 당했습니다</a></td>
                    <td>21/02/09</td>
                </tr>
            </table>
        </div>
        <div style="text-align: right; margin-right: 5%;">
            <button type="button" class="btn btn-primary" style="background-color: #04b4f6; border-color: #04b4f6;">문의 하기</button>
        </div>
    </article>
</section>

</div>
</body>
</html>