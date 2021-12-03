<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../../css/User_view_style.css">
    <link rel="stylesheet" href="../../css/memberPage.css">
    <link rel="stylesheet" href="../../css/AScss.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script type="text/javaScript" src="../../script/ASscript.js"></script>
    <title>내정보</title>
</head>
<body>
    <div id="wrap">

        <div style="padding-top: 1.5%; text-align: center;">
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
                            <a href="myact.html">닉네임</a></li>
                        <li>
                            <a href="myinfo.html">정보수정</a></li>
                        <li>
                            <a href="">로그아웃</a></li>
                    </ul>
                </div >
            </div>
        </div>
        
        <section class="sec1">
            <table class="join_tb">
                <caption class="title">내정보수정</caption>
                <tr>
                    <th class="info_th">아이디</th>
                    <td class="info_td">test</td>
                </tr>
                <tr>
                    <th class="info_th">비밀번호 *</th>
                    <td class="info_td"><input type="text"> (영문 대소문자/숫자 4자~16자)</td>
                </tr>
                <tr>
                    <th class="info_th">비밀번호 확인 *</th>
                    <td class="info_td"><input type="text"></td>
                </tr>
                
                <tr>
                    <th class="info_th">이름</th>
                    <td class="info_td">테스트</td>
                </tr>
                <tr>
                    <th class="info_th">닉네임</th>
                    <td class="info_td"><input type="text" class="box" placeholder="TT"></td>
                </tr>
                <tr>
                    <th class="info_th">이메일 *</th>
                    <td class="info_td"><input type="text" class="box" placeholder="aa@test.com"></td>
                </tr>    
                <tr>
                    <th class="info_th">이메일 수신</th>
                        <td class="info_td">
                            <input type="radio" name="email" checked="checked" value="예">예
                            <input type="radio" name="email">아니오</td>
                    </th>
                </tr> 
                <tr>
                    <th class="info_th">휴대전화 *</th>
                    <td class="info_td">
                        <input type="text" class="pbox" placeholder="000"> - <input type="text"class="pbox" placeholder="000"> - <input type="text"class="pbox" placeholder="000"></td>
                </tr>        
                <tr>
                    <th class="info_th">SMS 수신</th>
                        <td class="info_td">
                            <input type="radio"name="sms" checked="checked" value="예">예
                            <input type="radio"name="sms">아니오</td>
                    </th> 
                </tr>
                <tr style="height: 80px;">
                    <th class="info_th">주소 *</th>
                    <td class="info_td">
                        <input type="text" class="adbox" style="width:60px" placeholder="12345">
                        <button>우편번호</button><br>
                        <input type="text" class="adbox" placeholder="서울 서초구 서초대로77길 55"><br>
                        <input type="text" class="adbox" placeholder="에이프로스퀘어 3층">
                    </td>
                </tr> 
                <tr>
                    <th class="info_th" style="height: 100px">내 관심사 *</th>
                    <td class="info_td">
                        <table class="as_tb">
                            <tbody id="attentionSelectTbody">
                            </tbody>
                        </table>
                    </td>
                </tr>
            </table> 
            <div class="info_btn">
                <button class="m_btn">수정</button>
                <button class="m_btn">취소</button>
            </div>    
        </section>
    
    </div>
</body>
</html>
