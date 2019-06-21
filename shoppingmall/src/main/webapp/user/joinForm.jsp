<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
    <meta charset="utf-8">
    <title>회원가입 / Rainbow</title>
    <link rel="stylesheet" href="../css/joinform-style.css">
</head>

<!-- 회원가입창 -->
<h4>회원가입</h4>
<form id="joinForm" method="post" action="/shoppingmall/user/join.do">
	<div class="joinForm">
		<table class="joinTable">
			<tr>
			  <td>
			  	<input type="text" id="name" name="name" placeholder="이름">
			  	<p id="nameDiv"></p>
			  </td>
			</tr>
			<tr>
			  <td>
			  	<input type="text" id="id" name="id" placeholder="아이디">
			  	<p id="idDiv"></p>
			   	<input type="hidden" id="idCheck" value="">
			  </td>
			</tr>
			<tr>
			  <td>
			  	<input type="password" id="pwd" name="pwd" placeholder="비밀번호">
			  	<p id="pwdDiv"></p>
			  </td>
			</tr>
			<tr>
			  <td>
			  	<input type="password" id="repwd" name="repwd" placeholder="비밀번호 확인">
			  	<p id="repwdDiv"></p>
			  </td>
			</tr>
			<tr>
			  <td>
			  	<input type="text" id="email" name="email" placeholder="이메일">
			  	<p id="emailDiv"></p>
			  </td>
			</tr>
		</table>
	</div>
	<div class="agreeDiv">
		<p>이메일을 옳바르지 않게 작성할 시 혜택에서 제외 될 수 있습니다. ex) rbmall@rainbow.com<br>약관에 동의 하십니까?</p>
		<input type="checkbox" id="agree" name="agree" value="agree"> 약관동의(약관서 추가 예정)<br>
	</div>
	<div class="joinDiv">
		<input type="button" class="joinBtn" name="joinBtn" value="가입하기">
	</div>
</form>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
$('.joinBtn').click(function(){
	$('#nameDiv').empty();
	$('#idDiv').empty();
	$('#pwdDiv').empty();
	$('#repwdDiv').empty();
	if($('#name').val()==''){
		$('#nameDiv').text('이름을 입력하세요').css('color','red').css('font-size','11px').css('text-align','center');
	}else if($('#id').val()==''){
		$('#idDiv').text('아이디를 입력하세요').css('color','red').css('font-size','11px').css('text-align','center');
	}else if($('#pwd').val()==''){
		$('#pwdDiv').text('비밀번호를 입력하세요').css('color','red').css('font-size','11px').css('text-align','center');
	}else if($('#repwd').val()!=$('#pwd').val()){
		$('#repwdDiv').text('비밀번호가 일치하지 않습니다').css('color','red').css('font-size','11px').css('text-align','center');
	}else if($('#email').val()==''){
		$('#emailDiv').text('이메일을 입력하세요').css('color','red').css('font-size','11px').css('text-align','center');
	}else if(!$('#agree').prop('checked')){
		alert('약관동의에 체크해주세요');
	}else{
		$('#joinForm').submit();
	}
});

//중복체크
$('#id').focusout(function(){
	if($('#id').val()=='')
		$('#idDiv').html("먼저 아이디를 입력하세요.").css('color','magenta').css('font-size','11px').css('text-align','center');
	else 
		$.ajax({
			type : 'post',
			url  : '/shoppingmall/user/checkId.do',
			data : "id="+$('#id').val(),
			dataType : 'text',
			success : function(data){
				if(data=='exist'){
					$('#idDiv').html('이미 사용 중인 아이디입니다').css('color','red').css('font-size','11px').css('text-align','center');
					$('#idCheck').val("");
				}else if(data=='not_exist'){
					$('#idDiv').html('사용 가능한 아이디입니다').css('color','blue').css('font-size','11px').css('text-align','center');
					$('#idCheck').val($('#id').val());
				}
			}
		});
});
</script>