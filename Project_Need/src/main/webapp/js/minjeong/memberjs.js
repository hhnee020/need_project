/*회원가입 유효성검사*/

function checks() {
    var getCheck = RegExp(/^[a-zA-Z0-9]{4,16}$/);
    var getName = RegExp(/^[가-힣]{2,10}$/);
    var getBirth = RegExp(/^(19[0-9][0-9]|20\d{2})-(0[0-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$/);
    var getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
    var getAddr = RegExp(/^[가-힣]|[a-z]|[A-Z]|[0-9]{4,28}$/);
    var getPhone = RegExp(/^([0-9]{2,4})-?([0-9]{3,4})-?([0-9]{4})$/);
    
      
   //아이디 유효성 검사
    if($("#userid").val() == ""){
    alert("아이디를 입력해주세요.");
    $("#userid").focus();
    return false;
    }
    if(!getCheck.test($("#userid").val())){
    alert("4~16자리의 영문 대소문자와 숫자로만 입력가능.");
    $("#userid").val("");
    $("#userid").focus();
    return false;
    }

    //비밀번호 유효성 검사
    if($("#pwd").val() == ""){
    alert("비밀번호를 입력해주세요.");
    $("#pwd").focus();
    return false;
    }
    if(!getCheck.test($("#pwd").val())) {
    alert("4~10자리의 영문 대소문자와 숫자로만 입력가능.");
    $("#pwd").val("");
    $("#pwd").focus();
    return false;
    }

    //비밀번호 재확인
    if($("#pwd2").val() == ""){
    alert("비밀번호를 재확인해주세요.");
    $("#pwd2").focus();
    return false;
    }
    if($("#pwd").val() != $("#pwd2").val()){ 
    alert("비밀번호가 일치하지않습니다.");
    $("#pwd").val("");
    $("#pwd2").val("");
    $("#pwd").focus();
    return false;
    }
     
    //이름 유효성 검사
    if($("#username").val() == ""){
    alert("이름을 입력해주세요.");
    $("#username").focus();
    return false;
    }
    if(!getName.test($("#username").val())){
    alert("2~10자 이내 한글로 입력가능.");
    $("#username").val("");
    $("#username").focus();
    return false;
    }
  
    //이메일 유효성 검사
    if($("#email").val() == ""){
    alert("이메일을 입력해주세요.");
    $("#email").focus();
    return false;
    }
    if(!getMail.test($("#email").val())){
    alert("이메일 형식에 맞게 입력해주세요.(ex: id@ezen.com)")
    $("#email").val("");
    $("#email").focus();
    return false;
    }
    
    //연락처 유효성 검사
    if($("#phone").val() == ""){
    alert("연락처를 입력해주세요.");
    $("#phone").focus();
    return false;
    }
    if(!getPhone.test($("#phone").val())){
    alert("올바른 연락처를 입력해주세요.(ex: 010-1234-5678)");
    $("#phone").val("");
    $("#phone").focus();
    return false;
    }

    //주소 유효성 검사
    if($("#addr").val() == ""){
    alert("주소를 입력해주세요.");
    $("#addr").focus();
    return false;
    }
    if(!getAddr.test($("#addr").val())){
    alert("편의상 4~28자리의 한글과 숫자로 설정.");
    $("#addr").val("");
    $("#addr").focus();
    return false;
    }

} 