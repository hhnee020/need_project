<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <link rel="stylesheet" href="/css/public/style.css">
    <link rel="stylesheet" href="/css/bomin/AdminQuestionList.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <title>관리자 페이지</title>
    <style>
        td{padding: 1% 0% 1% 0%;}
        .reply {width: 56px;}
    </style>
    <script>
        $(function(){
            $("#allchk").click(function(){
                if($(this).prop("checked")){
                    $("input[type=checkbox]").prop("checked",true);
                } else{
                    $("input[type=checkbox]").prop("checked",false);
                }
            })
        })
    </script>

</head>


<body>

<div id="wrap">

<header class="clearfix">
    <img src="/images/src/Logo.png" class="logo">
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
            <li><a href="">신고처리</a></li>
        </ul>    
    
    </nav>

    <nav class="nav2 clearfix "> 
    <!-- <ul class="">
        <li><a href="broadcastList?categori=broad.html">전체</a></li>
        <li><a href="broadcastList?categori=broad.html">문의 관리 현황</a></li>
        <li><a href="broadcastList?categori=event">자주 질문 답변 목록</a></li>
        <li><a href="broadcastList?categori=info">안내</a></li>
    </ul>  -->
    </nav>
</header>
<section style="margin: 5% 5% 10% 5%;">
    
    <article style="margin: 5% 5% 10% 5%;">
        <div style="text-align: center; width: 100%; height: 800px;">
            
            <div><h2>신고 현황</h2></div>
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
                    <div style="width: 100%; text-align: left; margin-bottom: 2%;">
                        <span>총 조회 데이터 : 3건</span>
                    </div>
                    <table style="width: 100%;">
                        <colgroup>
                            <col style="width: 5%;"> <!-- 체크박스 -->
                            <col style="width: 5%;"> <!-- 글 번호 -->
                            <col style="width: 7%;"> <!-- 답변 상태 -->
                            <col style="width: 10%;"> <!-- 처리 -->
                            <col style="width: 10%;"> <!-- 분류 -->
                            <col style="width: 30%;"> <!-- 제목 -->
                            <col style="width: 10%;"> <!-- 신고인 -->
                            <col style="width: 10%;"> <!-- 피신고인 -->
                            <col style="width: 13%;"> <!-- 문의등록 시간 -->
                        </colgroup>
                        <tbody>
                            <tr>
                                <td><input type="checkbox" id="allchk"></td>
                                <td>번호</td>
                                <td>상태</td>
                                <td>처리</td>
                                <td>분류</td>
                                <td>제목</td>
                                <td>신고인</td>
                                <td>피신고인</td>
                                <td>시간</td>
                            </tr>
                            <tr>
                                <td><input type="checkbox"></td>
                                <td>3</td>
                                <td><span class="reply">처리완료</span></td>
                                <td><span class="no">불수용</span></td>
                                <td>부적절 홍보</td>
                                <td><a href="">이분이 이용약관 어기며 홍보함니다</a></td>
                                <td><a href="">홍길동</a></td>
                                <td><a href="">김아무개</a></td>
                                <td>21/02/04</td>
                            </tr>
                            <tr>
                                <td><input type="checkbox"></td>
                                <td>2</td>
                                <td><span class="reply">처리완료</span></td>
                                <td><span class="ok">수용</span></td>
                                <td>불쾌한 내용</td>
                                <td><a href="">제 맘에 안듭니다.</a></td>
                                <td><a href="">김도끼</a></td>
                                <td><a href="">야전삽</a></td>
                                <td>21/02/03</td>
                            </tr>
                            <tr>
                                <td><input type="checkbox"></td>
                                <td>1</td>
                                <td><span class="tbc">처리중</span></td>
                                <td><span class="">-</span></td>
                                <td>기타</td>
                                <td><a href="">이분이 저에게 사기치려고 합니다</a></td>
                                <td><a href="">최가가</a></td>
                                <td><a href="">임라라</a></td>
                                <td>21/02/03</td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                

            </div>
        </div>
    </article>
</section>

</div>
</body>
</html>
