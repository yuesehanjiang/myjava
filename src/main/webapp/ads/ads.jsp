<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 	    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/ads/bootStrap/jquery-3.2.1.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/ads/bootStrap/bootstrap.css" type="text/css"></link>
<script type="text/javascript" src="${pageContext.request.contextPath }/ads/bootStrap/bootstrap.js"></script>
<script type="text/javascript"></script>
<style type="text/css">
   body{
      margin-top:30px;
   }
  .botn{
  margin-left:500px;
  
  }
  
  
  

</style>
</head>
<body>
<div class="container">

         <center><h4>广告审核</h4></center>

     <table class="table">
			<tr class="active"><td>广告id</td>
			<td>广告名</td>
			<td>广告图片</td>
			<td>发布时间</td>
			<td>审核状态</td></tr>
			
	
			<tr>
			  <td class="active">XXX</td>
			  <td class="success">XXx</td>
			  <td class="warning"><img src="" style="widht:100px;height:100px"></img></td>
			  <td class="danger">1222-12-12</td>
			  <td class="info">未通过</td>
			</tr> 
			
			<tr class="active">
			  <td class="active">XXX</td>
			  <td class="success">XXx</td>
			  <td class="warning"><img src="" style="widht:100px;height:100px"></img></td>
			  <td class="danger">1222-12-12</td>
			  <td class="info">未通过</td>
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