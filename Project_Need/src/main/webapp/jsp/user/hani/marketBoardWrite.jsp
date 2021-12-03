<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../css/User_view_style.css">
   <link rel="stylesheet" href="../../css/public/style.css">
    <link rel="stylesheet" href="../css/hani/self.css">
     <link rel="stylesheet" href="../css/hani/boardWrite.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    


    <title>Need</title>
</head>

<body>
    <div id="wrap">
        <div style="padding-top: 1.5%;">
            <img src="../../images/src/Logo.png" class="logo" style="margin-top: -1.5%;">
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
                        <li >
                            <a href="">이보민</a></li>
                        <li>
                            <a Search>정보수정</a></li>
                        <li>
                            <a href="">로그아웃</a></li>
                    </ul>
                </div >
            </div>
        </div>
        

        <section class="clearfix">

            <table style="border: none; width: 60%;"  >

               <caption> <h4 style="text-align: left;"> 중고 거래 글쓰기 </h4></caption>

                <colgroup>
                
                  
                
                </colgroup>

                <tr>
                    <th class="th1">제목 </th>
                    <td><input type="text"></td>
                    <td><select>
                            <option value="">팝니다</option>
                            <option value="">삽니다</option>
                        </select>
                    </td>
                </tr>


                <tr>

                    <th class="th1">사진 추가</th>
                    <td colspan="2">
                    <button class="btn_img"><i class="bi bi-camera-fill"></i></button>

                    </td>

                </tr>

            
                <tr>
                    <th class="th1">내용</th>
                    <td class="td1"  colspan="2">
                        <textarea name="" id=""  style="width: 90%;
                        height: 300px; text-align: left; border: 0;" placeholder=" 게시글 내용을 작성해주세요 " ></textarea>
                    </td>
                </tr>
                <tr>
                    <th class="th1">카테고리</th>
                    <td colspan="2">
                        <select name="" id=""> 
                            <option value="1">  게시글의 주제를 선택 해주세요 </option>
                            <option value="2"> : 카테고리 : </option>
                            <option value="3"> : 카테고리 : </option>
                        </select>
                    </td>
                </tr>


                <tr>
                    <th class="th1">가격</th>
                    <td> <input type="text" placeholder=" ₩ 가격 (  선택 사항  )"></td>
                    <td> <input class="bo_chk" type="checkbox"> 가격제안 받기 </td>
                </tr>

            </table>

            <button class="bo_submit btn btn-primary" style="width: 200px; background-color: #04b4f6;border-color: #04b4f6;color: #fff; margin:15px;" >
                등록 </button>
           
        </section>


    </div>
    
    <footer class="foot">


        
    </footer>
</body>
</html>
