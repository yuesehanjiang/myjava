<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
  body{
      margin-top:200px; 
  }
</style>
</head>
<%@ include file="/member/nav.jsp" %>
<body>
<br><br><br><br><br>
   <div class="container">
       <center><h2>会员管理</h2></center>
     <table class="table">
		<tr>
		  <td class="active">用户名</td>
		  <td class="active">id</td>
		  <td class="active">年龄</td>
		  <td class="active">顶顶顶</td>
		  <td class="active">sss</td>
		    <td class="active">操作</td>
		</tr>
		
	
		<tr>
		  <td class="active">xx</td>
		  <td class="success">xxx</td>
		  <td class="warning">xxx</td>
		  <td class="danger">xxxx</td>
		  <td class="info">xxxx</td>
		   <td>
				      <button type="button" class="btn btn-success btn-xs"><i class="">增加</i></button>
				      <button type="button" class="btn btn-primary btn-xs"><i class="">删除</i></button>
					  <button type="button" class="btn btn-danger btn-xs"><i class="">修改</i></button>
			</td>
		  
		</tr>
		
		<tr>
		  <td class="active">XX</td>
		  <td class="success">XX</td>
		  <td class="warning">XX</td>
		  <td class="danger">XX</td>
		  <td class="info">XX</td>
		  <td>
				   <button type="button" class="btn btn-success btn-xs"><i class="">增加</i></button>
				      <button type="button" class="btn btn-primary btn-xs"><i class="">删除</i></button>
					  <button type="button" class="btn btn-danger btn-xs"><i class="">修改</i></button>
		  </td>
		  
		   
		</tr>
	
			     <tr >
				     <td colspan="6" align="center">
						<ul class="pagination">
								<li class="disabled"><a href="#">上一页</a></li>
								<li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a href="#">下一页</a></li>
							 </ul>
					 </td>
				 </tr>
  </table>
   
   </div>
</body>
</html>