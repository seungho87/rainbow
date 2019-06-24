<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="header-managerTop">
 <div class="headerDiv-managerTop">
   <ul class="nav justify-content-end"> 
   	<li class="nav-item">
       <a class="nav-link nav-link2 active " id="logout" href="#">LOGOUT</a>
     </li>
    	<li class="nav-item">
        <a class="nav-link nav-link2 active " id="main" href="#">MAIN</a>
      </li>      
    </ul>
  </div>
</div>   
<br><br>
<div class="logoArea-manager header2">
	<img src="../images/logo_img.png" id="managerlogoImg-manager" style="cursor: pointer; margin-top: 35px; width: 200px; height: 80px;;">	 
</div>
   
<nav class="nav nav-pills nav-justified">
   <ul class="nav nav-pills nav-justified nav-area">
     <li class="nav-item nav-item">
       <a class="nav-link nav-link1" id="data_management" href="#">DATA_MANAGER</a>
     </li>
     <li class="nav-item nav-item">
       <a class="nav-link nav-link1" id="user_management" href="#">USER_MANAGER</a>
     </li>
     <li class="nav-item nav-item">
       <a class="nav-link nav-link1" id="order_management" href="#">ORDER_LIST</a>
     </li>
     <li class="nav-item nav-item">
       <a class="nav-link nav-link1" id="return_management" href="#">RETURN</a>
     </li>
     <li class="nav-item nav-item">
       <a class="nav-link nav-link1" id="sales_management" href="#">SALES_MANAGER</a>
     </li>
   </ul>
</nav>

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
$('#managerlogoImg-manager').click(function(){	
	  location.href="/shoppingmall/manager/managerIndex.do";
});

$('#data_management').click(function(){	
	  location.href="/shoppingmall/manager/data_management.do";
});

$('#user_management').click(function(){	
	  location.href="/shoppingmall/manager/user_list.do";
});

$('#order_management').click(function(){	
	  location.href="/shoppingmall/manager/order_management.do";
});

$('#return_management').click(function(){	
	  location.href="/shoppingmall/manager/return_management.do";
});

$('#sales_management').click(function(){	
	  location.href="/shoppingmall/manager/sales_management.do";
});
</script>
