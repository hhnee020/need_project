<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../../css/style.css">
    <link rel="stylesheet" href="../../css/memberPage.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <title>회원등급관리</title>
</head>

<script>
    function fn_popuplv(){
    
        var url = "addLevel.html";
        window.open(url,"addLevel","width=700, height=430");
    }
</script>
<div id="wrap">

    <header class="clearfix">
        <img src="../../../src/Logo.png" class="logo">
        
    
        <div class="login ">
            
            <ul class="nav1">
            <li>
                <a href="">관리자</a></li>
            <li>
                <a href="">로그아웃</a></li>
    
        </ul>
        </div>
        
        <nav class="nav clearfix "> 
            
            <ul class="">
                <li><a href="">공지사항</a></li>
                <li><a href="">회원정보</a></li>
                <li><a href="">게시판 관리</a></li>
                <li><a href="">관리자 관리</a>
                
                </li>
                
                <li><a href="">문의 상담</a></li>
                <li><a href="">접속통계</a></li>
            </ul>    
        
        </nav>
    
        <nav class="nav2 clearfix "> 
        <ul class="">
            <li><a href="memberList.html">회원목록조회</a></li>
            <li><a href="memberLevel.html">회원등급관리</a></li>
            <li><a href="memberOut.html">탈퇴회원관리</a></li>
            <li><a href="memberAnaly.html">회원통계</a></li>
        </ul> 
        </nav>
    
    
    </header>
    <section class="sec1">
        <article>
            <table class="m_tb2"> 
                <caption class="title">회원등급</caption> 
                
                <colgroup>
                    <col width="7%"/>
                    <col width="30%"/>
                    <col width="10%"/>
                    <col width="18%"/>
                    <col width="30%"/>
                </colgroup>


                <tr>
                    <th class="th1">번호</th>
                    <th class="th1">등급명</th>
                    <th class="th1">레벨</th>
                    <th class="th1">회원보기</th>
                    <th class="th1">수정/삭제</th>
                </tr>
                <tr>
                    <td class="td1">1</td>
                    <td class="td1"> 동네인증회원</td>
                    <td class="td1">1</td>
                    <td class="td1"><a href="memberInfo.html">회원보기</a></td>
                    <td class="td1"><button class="m_btn3">수정</button>
                        <button class="m_btn3">삭제</button></td>
                </tr>
                <tr>
                    <td class="td1">2</td>
                    <td class="td1">일반회원</td>
                    <td class="td1">2</td>
                    <td class="td1"><a href="memberInfo.html">회원보기</a></td>
                    <td class="td1"><button class="m_btn3">수정</button>
                        <button class="m_btn3">삭제</button></td>
                </tr>
                <tr>
                    <td class="td1">3</td>
                    <td class="td1">계정정지</td>
                    <td class="td1">3</td>
                    <td class="td1"><a href="memberInfo.html">회원보기</a></td>
                    <td class="td1"><button class="m_btn3">수정</button>
                        <button class="m_btn3">삭제</button></td>
                </tr>
             
            </table>
            <button class="m_btn2" onClick="fn_popuplv(); return false;">신규 등급추가</button>
        </article>
        <br>
        <div class="pg">
            <nav aria-label="...">
                <ul class="pagination pagination-sm">
                    <li class="page-item active" aria-current="page">
                    <span class="page-link">1</span>
                    </li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                </ul>
                </nav>
        
        </section>
</div>
</body>
</html>    