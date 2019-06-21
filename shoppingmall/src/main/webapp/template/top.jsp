<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<header>
  <div class="header1">
    <div class="headerDiv">
      <ul class="nav justify-content-end">
      <c:if test="${userDTO != null }">
      	<li class="nav-item">
          <p class="nav-link nav-link2 active " id="userId">${userDTO.id}님 환영합니다!</p>
        </li>
      	<li class="nav-item">
          <a class="nav-link nav-link2 active " id="logout" href="/shoppingmall/user/logout.do">LOGOUT</a>
        </li>
        <li class="nav-item">
          <a class="nav-link nav-link2" href="/shoppingmall/user/myPageForm.do">MY PAGE</a>
        </li>
      </c:if>
      <c:if test="${userDTO == null }">
      	<li class="nav-item">
          <a class="nav-link nav-link2 active " href="/shoppingmall/user/loginForm.do">LOGIN</a>
        </li>
        <li class="nav-item">
          <a class="nav-link nav-link2" href="/shoppingmall/user/joinForm.do"">JOIN</a>
        </li>
      </c:if>
        <li class="nav-item">
          <a class="nav-link nav-link2" href="#" tabindex="-1" aria-disabled="true">CART</a>
        </li>
        <c:if test="${userDTO.userCode == 1 }">
	        <li class="nav-item">
	          <a class="nav-link nav-link3" id="managerPage" href="#" >관리자페이지</a>
	        </li>
        </c:if>
      </ul>
    </div>
  </div>
  <br><br>
  <div class="logoArea header2">
    <img src="../images/logo_img.png" id="logoImg">
  </div>

  <!-- navigation -->
  <nav class="nav nav-pills nav-justified">
    <ul class="nav nav-pills nav-justified nav-area">
      <li class="nav-item nav-item">
        <a class="nav-link nav-link1" id="top" href="#">TOP</a>
          <ul class="dropMenu">
            <li class="drop-item"><a class="drop-link" href="#">반팔 티셔츠</a></li>
            <li class="drop-item"><a class="drop-link" href="#">긴팔 티셔츠</a></li>
            <li class="drop-item"><a class="drop-link" href="#">나시</a></li>
          </ul>
      </li>
      <li class="nav-item nav-item">
        <a class="nav-link nav-link1" href="#">PANTS</a>
        <ul class="dropMenu">
          <li class="drop-item"><a class="drop-link" href="#">청바지</a></li>
          <li class="drop-item"><a class="drop-link" href="#">반바지</a></li>
          <li class="drop-item"><a class="drop-link" href="#">슬렉스</a></li>
          <li class="drop-item"><a class="drop-link" href="#">정장바지</a></li>
        </ul>
      </li>
      <li class="nav-item nav-item">
        <a class="nav-link nav-link1" href="#">SHIRTS</a>
        <ul class="dropMenu">
          <li class="drop-item"><a class="drop-link" href="#">와이 셔츠</a></li>
          <li class="drop-item"><a class="drop-link" href="#">캐주얼 셔츠</a></li>
          <li class="drop-item"><a class="drop-link" href="#">반팔 셔츠</a></li>
          <li class="drop-item"><a class="drop-link" href="#">린넨 셔츠</a></li>
        </ul>
      </li>
      <li class="nav-item nav-item">
        <a class="nav-link nav-link1" href="#">SHOES</a>
        <ul class="dropMenu">
          <li class="drop-item"><a class="drop-link" href="#">운동화</a></li>
          <li class="drop-item"><a class="drop-link" href="#">구두</a></li>
          <li class="drop-item"><a class="drop-link" href="#">슬리퍼</a></li>
          <li class="drop-item"><a class="drop-link" href="#">샌들</a></li>
          <li class="drop-item"><a class="drop-link" href="#">하이힐</a></li>
        </ul>
      </li>
      <li class="nav-item nav-item">
        <a class="nav-link nav-link1" href="#">OUTER</a>
        <ul class="dropMenu">
          <li class="drop-item"><a class="drop-link" href="#">자켓</a></li>
          <li class="drop-item"><a class="drop-link" href="#">야상</a></li>
          <li class="drop-item"><a class="drop-link" href="#">오리털 잠바</a></li>
        </ul>
      </li>
      <li class="nav-item nav-item">
        <a class="nav-link nav-link1" href="#">ETC</a>
        <ul class="dropMenu">
          <li class="drop-item"><a class="drop-link" href="#">시계</a></li>
          <li class="drop-item"><a class="drop-link" href="#">팔찌</a></li>
          <li class="drop-item"><a class="drop-link" href="#">반지</a></li>
          <li class="drop-item"><a class="drop-link" href="#">목걸이</a></li>
        </ul>
      </li>
    </ul>
  </nav>
</header>
<hr>
  
 <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
 <script>
$('#managerPage').click(function(){
	  if(confirm("관리자 메뉴로 갑니다")) {
		  window.open('/shoppingmall/manager/managerIndex.do');
	  }else {
		  return false;
	  }
});
 
 $('#logoImg').click(function(){
	 location.href="/shoppingmall/main/index.do"
 });
 
 $(document).ready(function(){
		var jboffset = $('.header1').offset();	
		$(window).scroll(function(){
			if($(document).scrollTop() > jboffset.top)
				$('.header1').addClass('jbFixed');
			else
				$('.header1').removeClass('jbFixed');
		});	
	});
 </script>
