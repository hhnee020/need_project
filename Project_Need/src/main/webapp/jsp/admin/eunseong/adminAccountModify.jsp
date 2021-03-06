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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <title>계정 수정</title>
</head>
<body>

<table class="popupadm1">

    <caption class="caption1" style ="font-size:30px;">관리자 계정 수정</caption>
    <colgroup>
        <col width="10%"/>
        <col width="30%"/>
    </colgroup>
    <tr >
        <th class="th1">아이디 
        </th>
        <td style ="padding-left:10px;">
        <input type="text" placeholder="아이디 조회"> 
       		<button  type ="button" value=""  class="btn  btn-primary" >조회 </button> 
        </td>
    </tr>

    <tr>
        <th class="th1">등급명 </th>
        <td style ="padding-left:10px;">
        	<select style="width: 150px;">
        		<option value=""> 최고관리자 </option>
        		<option value=""> 관리자 </option>
        		<option value=""> 일반 회원 </option>
                <option value=""> 정지 회원 </option>
            </select>
        </td>
    </tr>
    <tr>
        <th class="th1">암호 
        </th>
        <td style ="padding-left:10px;">
        <input type="text">
        </td>
    </tr>
    
</table>


    <div class="popupbtn1 div1" style ="text-align:center; margin-top:10px;">
        <input type="submit" value="수정" class="btn btn-primary" onclick="fn_submit(); return false;">
        <input type="reset" value="취소" class="btn  btn-primary" onclick="self.close();"  > 
    </div>

</body>
</html>
