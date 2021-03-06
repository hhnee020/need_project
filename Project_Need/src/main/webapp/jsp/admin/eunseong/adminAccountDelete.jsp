<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="/css/public/style.css">
    <link rel="stylesheet" href="/hani/css/self.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <title>관리자 계정 삭제</title>
</head>
<style>
.btn-primary{
		width:60px;
		height:35px;
        background-color: #04b4f6;
        border-color: #04b4f6;
        color:black;
    }
</style>

<body>
<table class="popupadm1">


    <caption class="caption1" style ="font-size:30px;">관리자 계정 삭제</caption>
    <colgroup>
        <col width="10%"/>
        <col width="30%"/>
    </colgroup>


    <tr>
        <th class="th1" >아이디 
        </th>
        <td style ="padding-left:10px;"><input type="text"></td>
    </tr>


    <tr>
        <th class="th1">등급명 </th>
        <td style ="padding-left:10px;">
     		<input type ="text" value ="" placeHolder="아이디 조회하면 출력" >
        </td>
    </tr>

    <tr>
        <th class="th1">비밀번호</th>
        <td style ="padding-left:10px;">
        	<input type="password" >
       	</td>
    </tr>
    
    
</table>

    <div class="popupbtn1" style ="text-align:center; margin-top:10px;">
        <button type="submit" value="삭제" class="btn btn-primary" onclick="fn_submit(); return false;">등록 </button>
        <button type="button" value="" class="btn btn-primary"  onclick="self.close();">취소</button>
    </div>


</body>
</html>
