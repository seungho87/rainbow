<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<ul class="nav-item nav-item">
     <li><a class="nav-link nav-link1" id="daily_sales" href="#">DAILY_SALES</a></li>
     <li><a class="nav-link nav-link1" id="total_sales" href="#">TOTAL_SALES</a></li>
</ul>
 
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
$('#daily_sales').click(function(){
	location.href="/shoppingmall/manager/sales_management.do";
});

$('#total_sales').click(function(){
	location.href="/shoppingmall/manager/total_sales.do";
});
</script>