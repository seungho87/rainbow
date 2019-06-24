<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<ul class="nav-item nav-item">
     <li><a class="nav-link nav-link1" id="user_list" href="#">USER_LIST</a></li>
     <li><a class="nav-link nav-link1" id="user_Withdrawal" href="#">USER_WITHDRAWAL</a></li>
</ul>
 
 
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
$('#user_list').click(function(){
	location.href="/shoppingmall/manager/user_list.do";
});

$('#user_Withdrawal').click(function(){
	location.href="/shoppingmall/manager/user_Withdrawal.do";
});
</script>