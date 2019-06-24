<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<ul class="nav-item nav-item">
     <li><a class="nav-link nav-link1" id="managerUserList" href="#">USER_LIST</a></li>
     <li><a class="nav-link nav-link1" id="userWithdrawal" href="#">USER_WITHDRAWAL</a></li>
</ul>
 
 
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
$('#managerUserList').click(function(){
	location.href="/shoppingmall/manager/user_management.do";
});

$('#userWithdrawal').click(function(){
	location.href="/shoppingmall/manager/userWithdrawal_management.do";
});
</script>