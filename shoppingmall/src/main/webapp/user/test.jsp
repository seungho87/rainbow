<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="../css/mypage-style.css">

<!-- 마이페이지창 -->
<h4>마이페이지</h4>
<div class="myPage">
	<div class="myPage2">
		<div class="card myPageCard" style="width: 40%; float : left;">
		  <div class="card-body myPageCard-body">
		    <h6 class="card-subtitle mb-2 text-muted">MY INFO</h6>
		    <h5 class="card-title">${userDTO.name} 님 (${userDTO.email})</h5>
		    <p class="card-text">회원등급 : ${userDTO.grade} 등급</p>
		    <a href="/shoppingmall/user/modifyCheckForm.do" class="card-link">내 정보 변경</a>
		  </div>
		</div>
		
		<div class="card myPageCard" style="width: 20%; float : left;">
		  <div class="card-body myPageCard-body">
		    <h6 class="card-subtitle mb-2 text-muted">POINT</h6>
		    <h5 class="card-title">포인트</h5>
		    <p id="point" class="card-text"></p>
		    <a href="#" class="card-link">포인트 내역보기</a>
		  </div>
		</div>
		
		<div class="card myPageCard" style="width: 20%; float : left;">
		  <div class="card-body myPageCard-body">
		    <h6 class="card-subtitle mb-2 text-muted">CASH</h6>
		    <h5 class="card-title">캐쉬</h5>
		    <p id="cash" class="card-text"></p>
		    <a href="#" class="card-link">캐쉬충전 내역보기</a>
		  </div>
		</div>
		
		<div class="card myPageCard" style="width: 20%; float : left;">
		  <div class="card-body myPageCard-body">
		    <h6 class="card-subtitle mb-2 text-muted">COUPON</h6>
		    <h5 class="card-title">쿠폰</h5>
		    <p class="card-text">${userDTO.point} 개</p>
		    <a href="#" class="card-link">쿠폰 목록보기</a>
		  </div>
		</div>
	</div>
</div>

<div class="myItem">
    <ul class="nav nav-tabs">
	  	<li class="nav-item">
	    	<a id="item-ed" class="nav-link active" href="#">배송완료 상품</a>
	  	</li>
	  	<li class="nav-item">
	    	<a id="item-ing" class="nav-link" href="#">배송중인 상품</a>
	  	</li>
	  	<li class="nav-item">
	    	<a id="item-re" class="nav-link" href="#">환불요청 중인 상품</a>
	  	</li>
	</ul>
</div>

<script>
$(document).ready(function(){
	var point = ${userDTO.point};
	var cash = ${userDTO.cash};
	$('#point').text(point.toLocaleString()+' 점');
	$('#cash').text(cash.toLocaleString()+' 원');	//.toLocaleString() 3자리수마다 쉼표
});
$('ul.nav li a').click(function(){
	$('ul.nav li a').removeClass('active');
	$(this).attr('class', 'nav-link active');
});
</script>