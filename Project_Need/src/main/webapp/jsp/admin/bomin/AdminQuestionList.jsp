<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/public/style.css">
    <link rel="stylesheet" href="/css/bomin/AdminQuestionList.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <title>관리자 페이지</title>
    <style>
        td{
            padding: 1% 0% 1% 0%;
        }
    </style>
</head>


<body>

<div id="wrap">

<header class="clearfix">

	<jsp:include page="/jsp/public/AdminLoginNav.jsp" flush="false">
		
	</jsp:include>

    <nav class="nav2 clearfix "> 
    <ul class="">
        <li><a href="broadcastList?categori=broad.html">전체</a></li>
        <li><a href="broadcastList?categori=broad.html">문의 관리 현황</a></li>
        <li><a href="broadcastList?categori=event">자주 질문 답변 목록</a></li>
        <li><a href="broadcastList?categori=info">안내</a></li>
    </ul> 
    </nav>
</header>
<section style="margin: 5% 5% 10% 5%;">
    
    <article style="margin: 5% 5% 10% 5%;">
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
                    <div style="margin-top: 1%;">
                        <input type="text" placeholder="21/01/01">
                        <label> ~ </label>
                        <input type="text" placeholder="21/01/05">
                    </div>
                </form>
                
                <div style="margin-top: 5%;">
                    <table style="width: 100%;">
                        <colgroup>
                            <col style="width: 7%;"> <!-- 답변 상태 -->
                            <col style="width: 10%;"> <!-- 글 번호 -->
                            <col style="width: 10%;"> <!-- 분류 -->
                            <col style="width: 50%;"> <!-- 제목 -->
                            <col style="width: 10%;"> <!-- 문의자 -->
                            <col style="width: 13%;"> <!-- 문의등록 시간 -->
                        </colgroup>
                        <tbody>
                            <tr>
                                <td>상태</td>
                                <td>번호</td>
                                <td>분류</td>
                                <td>제목</td>
                                <td>닉네임</td>
                                <td>시간</td>
                            </tr>
                            <tr>
                                <td><span class="unreply">미답변</span></td>
                                <td>3</td>
                                <td>이용 문의</td>
                                <td><a>구 · 판매에서 허용하는 범위가 있나요?</a></td>
                                <td>김홍구</td>
                                <td>21/02/04</td>
                            </tr>
                            <tr>
                                <td><span class="reply">답변</span></td>
                                <td>2</td>
                                <td>정보/보안</td>
                                <td><a>회원가입에 문제가있습니다.</a></td>
                                <td>김닭찜</td>
                                <td>21/02/03</td>
                            </tr>
                            <tr>
                                <td><span class="tbc">검토중</span></td>
                                <td>1</td>
                                <td>기타</td>
                                <td><a>아니 이거 왜이러죠</a></td>
                                <td>홍길이</td>
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
