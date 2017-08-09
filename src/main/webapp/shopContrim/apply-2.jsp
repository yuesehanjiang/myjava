<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="/shopContrim/nav.jsp" %>
</head>
<body>
 <%@ include file="/shopContrim/top.jsp" %>

    <div class="container theme-showcase" role="main">
      <div class="page-header">
        <h1>实名认证 - 申请</h1>
      </div>

		
        
		<form role="form" style="margin-top:20px;">
		  <div class="form-group">
			<label for="exampleInputEmail1">邮箱地址</label>
			<input type="text" class="form-control" id="exampleInputEmail1" placeholder="请输入用于接收验证码的邮箱地址">
		  </div>
          <button type="button" onclick="window.location.href='${pageContext.request.contextPath}/shopContrim/apply-1.jsp'" class="btn btn-default">上一步</button>
		  <button type="button" onclick="window.location.href='${pageContext.request.contextPath}/shopContrim/apply-3.jsp'"  class="btn btn-success">下一步</button>
		</form>
		<hr>
    
   


</body>
</html>