<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<ul class="nav-item nav-item">
     <li><a class="nav-link nav-link1" id="insert_data" href="#">INSERT_DATA</a></li>
     <li><a class="nav-link nav-link1" id="delete_data" href="#">DELETE_DATA</a></li>
</ul>
 
 
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
$('#insert_data').click(function(){
	location.href="/shoppingmall/manager/data_management.do";
});

$('#delete_data').click(function(){
	location.href="/shoppingmall/manager/delete_data.do";
});
</script>