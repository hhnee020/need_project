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
    <title>탈퇴회원관리</title>
</head>

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
        <ul class="">
            <li><a href="memberList.do">회원목록조회</a></li>
            <li><a href="memberOut.do">탈퇴회원관리</a></li>   
        </ul> 
        </nav>
    
    
    </header>
    <section class="sec1">
            <div>
                <table class="m_tb1">
                    <caption class="title">탈퇴회원</caption>
                    <tr>
                        <th class="th1">조건검색</th>
                        <td class="m_td1">
                            <select name="category">
                                <option value="name">이름</option>
                                <option value="userid">아이디</option>
                                <option value="phone">휴대폰</option>
                                <option value="email">이메일</option>
                                <option value="join">가입일</option>
                            </select>
                            <input type="text" style="width:120px;">
                            <button class="m_btn3">검색</button>     
                        </td> 
                    <tr> 
                        <th class="th1">탈퇴일</th>
                        <td class="m_td1"><input type="text"> ~ <input type="text"></td>
                    </tr>
                </table>
            </div>
            <div style="height: 30px; line-height: 2.5;">
                총 회원수: 00, 검색회원수: 0
               
            </div>
            <article>
                <table class="m_tb2"> 
                    <colgroup>
                        <col width="5%"/>
                        <col width="5%"/>
                        <col width="13%"/>
                        <col width="13%"/>
                        <col width="22%"/>
                        <col width="27%"/>
                        <col width="15%"/>
                      
                    </colgroup>

                    <tr>
                        <th class="th1"><input type="checkbox"></th>
                        <th class="th1">번호</th>
                        <th class="th1">이름</th>
                        <th class="th1">아이디</th>
                        <th class="th1">탈퇴사유</th>
                        <th class="th1">세부내용</th>
                        <th class="th1">탈퇴일</th>
                    </tr>
                    <tr>
                        <td class="td1"><input type="checkbox"></td>
                        <td class="td1">3</td>
                        <td class="td1"><a href="memberInfo.do">테스트</a></td>
                        <td class="td1">test</td>
                        <td class="td1">1.원하는 것이 없음</td>
                        <td class="td1">탈퇴희망</td>
                        <td class="td1">0000-00-00</td>
                    </tr>
                    <tr>
                        <td class="td1"><input type="checkbox"></td>
                        <td class="td1">2</td>
                        <td class="td1"><a href="memberInfo.do">테스트</a></td>
                        <td class="td1">test</td>
                        <td class="td1">4.기타</td>
                        <td class="td1">그냥</td>
                        <td class="td1"> 0000-00-00</td>
                    </tr>
                    <tr>
                        <td class="td1"><input type="checkbox"></td>
                        <td class="td1">1</td>
                        <td class="td1"><a href="memberInfo.do">테스트</a></td>
                        <td class="td1">test</td>
                        <td class="td1">2.자주 이용하지 않음</td>
                        <td class="td1">생각보다 자주 쓰지 않음</td>
                        <td class="td1">0000-00-00</td>
                    </tr>
                </table>
                <button class="m_btn2">회원삭제</button>
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
            </div>  
        </section>

</div>


</body>
</html>    