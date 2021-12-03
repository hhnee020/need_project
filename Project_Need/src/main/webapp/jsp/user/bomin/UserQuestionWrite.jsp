<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../../css/style.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <!-- include libraries(jQuery, bootstrap) -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

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
</head>
<body>
    <div id="wrap">
        <div style="padding-top: 1.5%;">
            <img src="../../../src/Logo.png" class="logo" style="margin-top: -1.5%;">
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

        <section style="margin-top: 10%; height: 1000px;">
            <h3 style="margin-bottom: 7%;">문의 작성</h3>
            <form method="post">
                <div style="margin: 5%; display: flex; justify-content: center; margin-bottom: 0;">
                    <div class="sec1" style="margin-top: -5%; width: 1200px;  margin-bottom: 0; ">
                        <div style="border-bottom: 1px solid #555; margin-bottom: 3%;"></div>
                        
                    <div style="text-align: left;">
                        <label for="categori" style="margin-right: 1%;">분류 </label>
                        <select id="categori">
                            <option>정보/보안</option>
                            <option>이용 문의</option>
                            <option>사기 피해</option>
                        </select>
                    </div>
                    <div style="text-align: left; margin:2% 0% 2% 0%;">
                        <label for="title" style="margin-right: 1%;">제목</label>
                        <input type="text" id="title">
                    </div>
                            <textarea id="summernote" name="editordata"></textarea>
                        
                    <script>
                        $(document).ready(function() {
                            $('#summernote').summernote({
                                
                                height: 300,
                                disableResizeEditor: true,
                                lang: "ko-KR",
                                toolbar : [
                                    ['style',['picture','video','link','paragraph']]
                                ]
                            });
                        });
                    </script>
                    </div>
                </div>
                <div style="margin:2% 5% 0% 5%; display: flex; justify-content: center; ">
                    <div id="date_div" style="border-top: 1.5px solid #000; width: 970px; padding-top: 1%;  font-size: 1em;text-align: left;">
                        <p style="text-align: left; margin-bottom: 5%; font-size: 1.2em;">답변 알림받기</p>
                        <p style="text-align: left;">※ 답변 등록 시 가입 된 이메일로 발송해 드립니다.</p>
                        <label for="email_yes" style="font-weight: normal;">이메일 발송</label>
                        <input type="checkbox" id="email_yes" style="margin-bottom: 5%;">

                        <p style="text-align: left;">※ 답변 등록 시 가입 된 휴대번호로 발송해 드립니다.</p>
                        <label for="SNS_yes" style="font-weight: normal;">문자 메세지 발송</label>
                        <input type="checkbox" id="SNS_yes">
                    </div>
                    
                </div>
                <button class="btn btn-primary" type="submit" style="background-color: #04b4f6; border: #04b4f6;">저장</button>
            </form>
        </section>
        
    </div>
    
</body>
</html>