<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="UTF-8">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

	<%@include file="/WEB-INF/includes/css-file.jsp"%>
	<link rel="stylesheet" href="${ctp}/css/main.css">
	<style>
	.tree li {
        list-style-type: none;
		cursor:pointer;
	}
	.tree-closed {
	    height : 40px;
	}
	.tree-expanded {
	    height : auto;
	}
	</style>
  </head>

  <body>

    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container-fluid">
        <div class="navbar-header">
          <div><a class="navbar-brand" style="font-size:32px;" href="#">天玖隆-后台管理</a></div>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li style="padding-top:8px;">
				<div class="btn-group">
				  <button type="button" class="btn btn-default btn-success dropdown-toggle" data-toggle="dropdown">
					<i class="glyphicon glyphicon-user"></i> 
					${loginUser.username }
					<span class="caret"></span>
				  </button>
					  <ul class="dropdown-menu" role="menu">
						<li><a href="#"><i class="glyphicon glyphicon-cog"></i> 个人设置</a></li>
						<li><a href="#"><i class="glyphicon glyphicon-comment"></i> 消息</a></li>
						<li class="divider"></li>
						<li><a href="index.html"><i class="glyphicon glyphicon-off"></i> 退出系统</a></li>
					  </ul>
			    </div>
			</li>
            <li style="margin-left:10px;padding-top:8px;">
				<button type="button" class="btn btn-default btn-danger">
				  <span class="glyphicon glyphicon-question-sign"></span> 帮助
				</button>
			</li>
          </ul>
          <form class="navbar-form navbar-right">
            <input type="text" class="form-control" placeholder="查询">
          </form>
        </div>
      </div>
    </nav>
    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
		
		<div class="col-sm-3 col-md-2 sidebar">
  
</div>
		
		
		
		
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">菜单展示  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <button type="button" class="btn btn-warning" id="add">增加菜单</button> </h1> 
         
          <div class="row placeholders">
           <table class="table table-striped">

				<tr class="active">
				  <td class="active">菜单id</td>
				   <td class="active">菜单名称</td>
				    <td class="active">菜单图标</td>
				    <td class="active">菜单地址</td>
				    <td class="active">操作</td>
				</tr>
				
		
		   <c:forEach items="${usercare.list }"  var="uu">
				<tr> 
				  <td class="active">${uu.id }</td>
				  <td class="success">${uu.name}</td>
				  <td class="warning">${uu.icon }</td>
				  <td class="danger">${uu.url }</td>
				  <td class="danger"><a href="${ctp}/user/care/del?pageNum=${usercare.pageNum}&id=${uu.id}">删除</a>
				  &nbsp;&nbsp;<a href="${ctp}/user/care/edit"  idm="${uu.id }" name="${uu.name }"
				   class="edit"  onclick="return false">修改</a></td>
				</tr> 
          </c:forEach>    
   <!-- :PageInfo{pageNum=1, pageSize=3, size=3, startRow=1,
    endRow=3, total=8, pages=3, 
    list=Page{count=true, pageNum=1, pageSize=3, startRow=0, endRow=3, total=8, pages=3, reasonable=false, pageSizeZero=false}, prePage=0, nextPage=2, isFirstPage=true, isLastPage=false, hasPreviousPage=false, hasNextPage=true, navigatePages=5, 
   navigateFirstPage1, navigateLastPage3, navigatepageNums=[1, 2, 3]}       --> 
           <tr >
                     <td colspan="6" align="center">
                        <ul class="pagination">
                                <li><a href="${ctp }/user/care?pageNum=${usercare.prePage}">上一页</a></li>
                                <c:forEach items="${usercare.navigatepageNums }" var="ss">
                                  <c:if test="${ss==usercare.pageNum}">
                                    <li class="active"><a href="${ctp }/user/care?pageNum=${ss}">[${ss }]<span class="sr-only">(current)</span></a></li>
                                
                                  </c:if>  
                                   <c:if test="${ss!=usercare.pageNum}">
                                     <li ><a href="${ctp }/user/care?pageNum=${ss}">${ss }</a></li>
                                   </c:if>
                               </c:forEach>
                                <li><a href="${ctp }/user/care?pageNum=${usercare.nextPage}">下一页</a></li>
                             </ul>
                     </td>
                 </tr>
          
          
          
          
        </table>    
              
              
              
        </div>
      </div>
      
      <!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" data-backdrop="static" data-keyboard="false">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">操作界面</h4>
      </div>
      <div class="modal-body">
         <form id="form" action="${ctp}/userCare/add">
            <input type="hidden"  name="id" id="ids"/>
                <input type="hidden"  name="pageNum"    value="${usercare.pageNum}"/>
			  <div class="form-group">
			      菜单名： <input type="text" class="form-control" 
			      name="name" id="exampleInputEmail1" placeholder="菜单名">
			  </div>
			  <div class="form-group">
			    菜单地址:  <input type="text" class="form-control" 
			      value="${user.url }"
			    id="exampleInputPassword1"  name="url" placeholder="菜单地址">
			  </div>
			  
			  
			   <div class="modal-footer">
			    <button type="submit" class="btn btn-default submit"> 提交</button>
		        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
		      </div>
			  
        </form>
      </div>
     
    </div>
  </div>
</div>
    </div>
	<%@include file="/WEB-INF/includes/js-file.jsp" %>
        <script type="text/javascript">
            $(function () {
			    $(".list-group-item").click(function(){
				    if ( $(this).find("ul") ) {
						$(this).toggleClass("tree-closed");
						if ( $(this).hasClass("tree-closed") ) {
							$("ul", this).hide("fast");
						} else {
							$("ul", this).show("fast");
						}
					}
				});
			    
			    
			 $("#add").click(function(){
				 $("#myModal").modal();
			 })
			 
			 
			 $(".edit").click(function(){
				// alert(123);
				href=$(this).attr("href");
				idm=$(this).attr("idm");
				name=$(this).attr("name");
				 $("input[name='name'][id='exampleInputEmail1']").val(name);
				//alert(name);
			   $("#myModal").modal();
			  //  return false;
				//return false;
				/* ${ctp}/user/care/edit?pageNum=${usercare.pageNum}&id=${uu.id}" class="edit */
			  //进行数据回显
			// location.href="${ctp}/user/show?id="+idm;
			 })
			 
			  $(".submit").click(function(){
				 // alert(name);
				 $("#ids").val(idm);
				
				   location.href=href+"?"+$("#form").serialize() ;
				    return false;
			  }) 
			 
            });
        </script>
  </body>
</html>
