<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
    <meta charset="utf-8">
    <title>회원가입 완료 / Rainbow</title>
    <link rel="stylesheet" href="../css/join-style.css">
</head>

<div class="join-complete">
	<img src="../images/success.png" id="join-complete-img">
	<h4 class="title">회원가입 완료</h4>
	<p>회원님의 가입이 성공적으로 이루어졌습니다!<br>즐거운 쇼핑 되세요!</p>
	<input type="button" id="goMainBtn" value="메인으로">
</div>

<script>
$('#goMainBtn').click(function(){
	location.href="/shoppingmall/main/index.do";
});
</script>