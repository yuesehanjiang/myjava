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
			<label for="exampleInputEmail1">验证码</label>
			<input type="text" class="form-control" id="exampleInputEmail1" placeholder="请输入你邮箱中接收到的验证码">
		  </div>
          <button type="button" onclick="javascript:;" class="btn btn-primary">重新发送验证码</button>
		  <button type="button" onclick="window.location.href='#'"  class="btn btn-success">申请完成</button>
		</form>
		<hr>
    </div> <!-- /container -->
       


</body>
</html>