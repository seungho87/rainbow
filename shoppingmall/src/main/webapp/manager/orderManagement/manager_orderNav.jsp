<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<ul class="nav-item nav-item">
     <li><a class="nav-link nav-link1" id="order_list" href="#">ORDER_LIST</a></li>
</ul>    

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
$('#order_list').click(function(){
	location.href="/shoppingmall/manager/order_list.do";
});
</script>