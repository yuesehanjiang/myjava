<%@page import="com.atguigu.scw.manager.constant.Constants"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<script type="text/javascript"  src="${ctp }/jquery/jquery-2.1.1.min.js"></script>
<script type="text/javascript"  src="${ctp }/plugin/ztree/jquery.ztree.all-3.5.min.js"></script>
<script type="text/javascript"  src="${ctp }/plugin/ztree/jquery.ztree.exedit.js"></script>
<style>
.tree{
  margin-top:100px;
  background:#F8F8FF;
   height:955px;
   margin-top:-40px;
}
.col-md-2{
  margin-top:-200px;
   
}

</style>
<link  rel="stylesheet" href="${ctp }/plugin/ztree/zTreeStyle.css"/>
<div class="col-sm-3 col-md-2  main">
	<div class="tree">
		<ul style="padding-left: 0px;" class="list-group  ztree" id="ss">
			
		</ul>
	</div>
</div>
<style>
 
</style>


<script type="text/javascript">
var setting = {
		view: {
			dblClickExpand: false//屏蔽掉双击事件
			},
        data: {
              simpleData: {
                    enable: true,
                                     　idKey: "id",
                   pIdKey: "pid",
                   title:"mname"
              }
		
         
        },
        
        callback: {
        	onClick: "onClick"
        	}
       
  };
   var znod=null;
 
  $(function(){
	  $.post("${ctp}/menu/all",function(data){
		   var zNodes =data;
	  $.fn.zTree.init($("#ss"), setting, zNodes);
      
	   },"json") 
        alert(123);
  })

 
 
 </script>

