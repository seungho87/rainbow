<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MANAGER PAGE</title>
<link rel="stylesheet"
href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<link rel="stylesheet" href="../css/manager.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
	<header>
		<jsp:include page="managerTop.jsp" />
	</header>
	<nav>
		<div class="managerNavDiv">
		<c:if test="${managerNav != null }">
			<jsp:include page="${managerNav }" />
		</c:if>
		<c:if test="${managerNav == null }">
			<jsp:include page="userManagement/manager_userNav.jsp" />
		</c:if>
		</div>
    </nav>
    <section>
   		 <article>
   		 	<div class="managerArticleDiv">
   		 	   	<c:if test="${managerSect != null }">
					<jsp:include page="${managerSect }" />
				</c:if>
   		 		<c:if test="${managerSect == null }">
					<jsp:include page="userManagement/userList.jsp" />
				</c:if>
    		</div>
    	 </article>	
    </section>
    <footer>
   		 <div>
    			<jsp:include page="managerFooter.jsp" />
    	</div>
    </footer>
</body>
<script>
$('#managerlogoImg').click(function(){	
	  location.href="/shoppingmall/manager/managerIndex.do";
});

$('#logout').click(function(){
	 if(confirm("로그아웃 하시겠습니까?")) {
		 location.href="/shoppingmall/user/logout.do";
	  }else {
		  return false;
	  }
});

$('#main').click(function(){
	 if(confirm("관리자 페이지에서 나갑니다.")) {
		 window.close();
		 location.href="/shoppingmall/main/index.do";
	  }else {
		  return false;
	  }
});
</script>
</html>