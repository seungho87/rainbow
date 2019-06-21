<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<h1 align="center">USER_LIST</h1>

<div id="userListDiv">
	<div id="user_listDiv">
		<input type="checkbox" value="전체삭제">전체삭제
	</div>
</div>

<script>
$(document).ready(function(){	
	$.ajax({
		type : 'POST' ,
		url : '/shoppingmall/manager/getUserList.do' ,
		dataType : 'json' ,
		success : function(data){			
			$.each(data.list, function(index,items){
				$("#userListDiv").append("<input type='checkbox' value="+index+">")
								 .append("<div id='userList_Div'>"+items.name+" "				
					 			 +items.id+" "
					 			 +items.email+" "				 			
					 			 +items.totalPay+" "
					 			 +items.point+" "
					 			 +items.grade+" "
					 			 +items.cash+"</div>")
					 			 .append("<div></div>");				
			});//each;		
			
		}
	});
});
</script>