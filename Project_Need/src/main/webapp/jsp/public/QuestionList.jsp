<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/public/User_view_style.css">
    <link rel="stylesheet" href="/css/bomin/QuestionList.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <title>관리자 페이지</title>

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
                        <a href="">관리자</a></li>
                    <li>
                        <a href="">정보수정</a></li>
                    <li>
                        <a href="">로그아웃</a></li>
                </ul>
            </div >
        </div>
    </div>

<section>
    <article style="margin: 5% 5% 10% 5%;">
        <h3 style="padding:5% 0% 5% 0%; font-weight: bold;">자주하는 질문</h3>
        <div style="text-align: center; width: 100%; height: 800px;">
            
            <div class="menu_list" style="background-color: #04b4f6; color: #fff;">전체</div>
            <div class="menu_list">정보/보안</div>
            <div class="menu_list">이용 문의</div>
            <div class="menu_list">사기 피해</div>
            <div class="menu_list">기타</div>
            <div style="margin-top: 5%; border-top: 1px solid #555; width: 90%; text-align: center;">
                <form style="margin-top: 3%;">
                    <select style="margin-right: 0.5%;">
                        <option>제목</option>
                        <option>내용</option>
                    </select>
                    <input type="text" style="width: 30%;" id="search_input_text" placeholder="검색 할 내용">
                    <button style="
                    border: 1px solid #555;
                    color: #333; 
                    background-color: #fff;
                    padding:1px 2px;
                    border-radius: 5px;">검색</button>
                </form>

                <div style="margin-top: 5%;">
                    <ul style="width: 80%;">
                        <li class="dt_list" id="1">
                            <strong class="Q">Q</strong>
                            <strong class="A">현금 영수증을 발행하고 싶어요</strong>
                            <span class="arrow">▼</span>
                            <button type="button" class="btn btn-danger delete_btn">삭제</button>
                        </li>
                        <div class="div_info" id="info_1" style="display: none;">
                            <p>발행해주기 싫어용!!!</p>
                        </div>


                        <li class="dt_list" id="2">
                            <strong class="Q">Q</strong>
                            <strong class="A">이거 왜이래요</strong>
                            <span class="arrow">▼</span>
                            <button type="button" class="btn btn-danger delete_btn">삭제</button>
                        </li>
                        <div class="div_info" id="info_2" style="display: none;">
                            <p>글쎄용 왜 그럴까용..</p>
                        </div>
                    </ul>
                </div>
                <div style="width: 100%; text-align: right; margin-top: 5%;">
                    <button type="button" class="btn btn-primary" style="background-color: #04b4f6; border-color: #04b4f6;">문의 하기</button>
                </div>
            </div>
        </div>
    </article>
</section>

</div>
</body>
<script>
    
    $(function() {
            $(".dt_list").click(function(){
                var id = $(this).attr("id");
                var target = "info_"+id;
                if($("#"+target).css("display") != "none"){
                    $("#"+target).hide();
                } else{
                    $("#"+target).show();
                }
            });
        });
</script>
</html>