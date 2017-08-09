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
<body>
    <%@ include file="/shopContrim/top.jsp" %>

    <div class="container theme-showcase" role="main">




      <div class="page-header">
        <h1>实名认证 - 商铺认证</h1>
      </div>
	  <div class="col-xs-6 col-md-3">
        <h2>商铺认证</h2>
        <a href="#" class="thumbnail">
          <img alt="100%x180" src="img/services-box2.jpg" data-holder-rendered="true" style="height: 180px; width: 100%; display: block;">
        </a>
      </div>
     	<button type="button" class="btn btn-danger btn-lg btn-block" onclick="window.location.href='${pageContext.request.contextPath}/shopContrim/applyType.jsp'">认证申请</button>
     
      <!-- /END THE FEATURETTES -->
    </div>

  </body>






</body>
</html>