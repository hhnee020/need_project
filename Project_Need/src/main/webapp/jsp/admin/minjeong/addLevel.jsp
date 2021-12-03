<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../../css/style.css">
        <link rel="stylesheet" href="../../css/memberPage.css">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <title>등급추가</title>
    </head>
<body>
    <section class="sec1">
        <table class="add_tb" >
            <tr>
                <th class="th1">등급명</th>
                <td class="td2"><input class="text"></td>
            </tr>
            <tr>
                <th class="th1">등급레벨</th>
                <td class="td2">
                    <select name="level">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                    </select>
                </td>
            </tr>
            <tr>
                <th class="th1">작성권한</th>
                <td class="td2">
                    <input type="radio" name="" checked="checked" value="글쓰기">글쓰기
                    <input type="radio" name="" value="댓글">댓글
                    <input type="radio" name="" value="채팅">채팅
                </td>
            </tr>
            <tr>
                <th class="th1">세부내용</th>
                <td class="td2"><textarea></textarea></td>
            </tr>
        </table>
        <div class="info_btn">
            <button class="m_btn3">확인</button>
            <button class="m_btn3">목록</button>
        </div>  
          
    </section>
</body>
</html>