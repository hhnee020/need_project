<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../css/style.css">
    <link rel="stylesheet" href="../css/self.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <title>Document</title>
</head>
<body>

<table class="popupadm1">


    <caption class="caption1"><h3>관리자 계정 등록</h3></caption>
    <colgroup>
        <col width="10%"/>
        <col width="30%"/>
    </colgroup>


    <tr >
        <th class="th1">아이디 
        </th>
        <td><input type="text"></td>
    </tr>


    <tr>
        <th class="th1">권한명 </th>
        <td>
        	<select style="width: 150px;">
        		<option value=""> 권한명 </option>
                <option value=""> 권한명 </option>
            </select>
       </td>
    </tr>

</table>


    <div class="popupbtn1 div1" colspan="2">
        <input type="submit" value="저장" class="btn  btn-primary" onclick="fn_submit(); return false;">
     
    </div>


</body>
</html>
