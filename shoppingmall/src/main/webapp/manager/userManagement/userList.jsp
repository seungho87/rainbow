<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<h1 align="center">USER_LIST</h1>

<div id="userListDiv">
	<table id='userList-table'>
	<tr>
		<td><input type="checkbox" value="전체삭제"></td>
		<th>NAME</th>
		<th>ID</th>
		<th>EMAIL</th>
		<th>POINT</th>
		<th>GRADE</th>
	</tr>
	</table>
	<div id="userList_paging" ></div>
</div>
<script>
$(document).ready(function(){	
	$.ajax({
		type : 'POST' ,
		url : '/shoppingmall/manager/getUserList.do' ,
		dataType : 'json' ,
		success : function(data){			
			$.each(data.list, function(index,items){
				$('<tr/>').append($('<input>',{
					type : 'checkbox' ,
					value : items.usercode
				})).append($('<td/>',{
					text : items.name
				})).append($('<td/>',{
					text : items.id
				})).append($('<td/>',{
					text : items.email
				})).append($('<td/>',{
					text : items.point
				})).append($('<td/>',{
					text : items.grade
				})).appendTo($('#userList-table'));				
			});//each;	
			
			$('#userList_paging').html(data.userPaging.pagingHTML);
		}
	});
});
</script>