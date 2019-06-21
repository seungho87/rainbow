<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
    <meta charset="utf-8">
    <title>로그인 / Rainbow</title>
	<link rel="stylesheet" href="../css/loginform-style.css">
</head>

<!-- login Form / Join Form -->
<div id="login-box">
  <div class="left-box">
    <div class="formDiv">
    <h1 id="login-title"><b>회원 로그인</b></h1>
    <p id="login-text">가입하신 아이디와 비밀번호를 입력해주세요.<br>
      비밀번호는 대소문자를 구분합니다.</p>
      <form name="joinForm" id="joinForm">
        <input type="text" name="id" id="id" placeholder="MEMBER ID" />
        <input type="password" name="password" id="pwd" placeholder="PASSWORD" />
        <input type="button" id="loginBtn" value="로그인" class="loginBtn"/>
      </form>
    </div>
  </div>
  <div class="right-box">
    <h1 id="login-title"><b>회원 가입</b></h1>
    <p id="login-text" class="right-text">아직 회원이 아니신가요?<br>
    회원가입을 하시면 다양한 혜택을 편리하게 이용하실 수 있습니다.</p>
    <input type="button" id="joinFormBtn" value="회원 가입" class="joinFormBtn btn"/>
    <p id="login-text" class="right-text">아이디 혹은 비밀번호를 잊으셨나요?<br>
    간단한 정보를 입력 후 잃어버린 정보를 찾을 수 있습니다.</p>
    <input type="button" value="ID/PASSWORD" class="searchBtn btn"/>
  </div>
</div>
<div class="social-login">
  <button type="button" class="social-loginBtn facebook">페이스북으로 시작하기</button>
  <button type="button" class="social-loginBtn kakao">카카오로 시작하기</button>
  <button type="button" class="social-loginBtn naver">네이버로 시작하기</button>
</div>
<hr>
<div class="nonMemberDiv">
  <h3 id="nonMember-title" style="font-weight : bold">비회원 구매 상품 조회</h3>
  <form name="nonMemberForm" id="nonMemberForm">
    <input type="text" name="name" id="nonMemberName" placeholder="이름을 입력해주세요" />
    <input type="password" name="code" id="nonMemberCode" placeholder="비회원 번호를 입력해 주세요" />
    <input type="button" value="상품 조회" class="searchingItemBtn"/>
  </form>
</div>

<script>
$('#loginBtn').click(function(){
	if($('#id').val()=='')
		alert("아이디를 입력해주세요")
	else if($('#pwd').val()=='')
		alert("비밀번호를 입력해주세요")
	else
		$.ajax({
			type : 'POST',
			url : '/shoppingmall/user/login.do',
			data : {"id":$('#id').val(),
					"pwd":$('#pwd').val()},
			dataType : 'text',
			success : function(data){
				if(data=='loginFail'){
					alert("아이디또는 비밀번호를 확인해주세요");
				}else if(data=='loginOk'){
					location.href='/shoppingmall/main/index.do';
				}
			}
		});	
});
$('#joinFormBtn').click(function(){
	location.href='/shoppingmall/user/joinForm.do';
})
</script>