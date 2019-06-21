<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<ul class="nav-item nav-item">
     <li><a class="nav-link nav-link1" id="return_list" href="#">RETURN_LIST</a></li>
     <li><a class="nav-link nav-link1" id="cancel_list" href="#">CANCEL_LIST</a></li>
</ul>

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
$('#return_list').click(function(){
	location.href="/shoppingmall/manager/return_list.do";
});

$('#cancel_list').click(function(){
	location.href="/shoppingmall/manager/cancel_list.do";
});
</script>