<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="/member/nav.jsp" %>
 <head>
   <%@ include file="/js/nav.jsp" %>
 
 </head>

	<body>
		<%@ include file="/js/dingbu.jsp" %>

		<div class="margin-big-top layout">
			<div class="container border border-gray-white member clearfix">
				<%@ include file="/js/left.jsp" %>
				<div class="right padding-big-left padding-big-right">
					<div class="margin-big-top border">
						<div class="padding-big-left padding-big-right border-bottom bg-gray-white text-lh-40">
							<center>
								<h1>座位管理</h1></center>

						</div>
					</div>
		 <table class="table">
		<tr>
		  <td class="active">消息id</td>
		  <td class="active">订单名</td>
		  <td class="active">XXX</td>
		  <td class="active">XXX</td>
		  <td class="active">会员名</td>
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
			</div>
			<%@ include file="/js/button.jsp" %>
	</body>

</html>