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
			fontCss : {background:"blue",size:23},  
			 nameIsHTML: true  ,
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
        
  
       
  };
   var znod=null;
   
   function getFont(treeId, node) {  
       return node.font ? node.font : {};  
   }  
 
  $(function(){
	  $.post("${ctp}/menu/all",function(data){
		   var zNodes =data;
	  	   $.fn.zTree.init($("#ss"), setting, zNodes);
	  	   
	  	   //隐藏加号
	  	   $("span.button.switch ").css("display","none");
	  	   
	  	   var leavls = document.querySelectorAll("a.level0");
	 	   for(var i=0;i<leavls.length;i++){
	 		 
	 	 	leavls[i].onclick=function(){
	 	 		// $("span.button.switch ").css("display","none");
	 			 $(this).parent()
	 			.children(":eq(0)").trigger("click");
	 			 
	 			 
	 			
	 			  var ml = document.querySelectorAll("a.level1");
	 		 	 
	 	            // alert("m1"+ml.length);
	 		 	   for(var i=0;i<ml.length;i++){
	 		 		  ml[i].onclick=function(){
	 		 			 $(this).parent()
	 		 			.children(":eq(0)").trigger("click");
	 		 		   }
	 		 		   
	 		 	   }
	 			 
	 			 
	 			 
	 			 
	 			 
	 		}  
	 		var ye=leavls[i];
	 		  console.log(ye);
	 		  
	 		  
	 		  
	 		
	 	   }
	 	   
	 	
	 	   
      
	   },"json") 
      
	   var as = $("ul a");
	    alert($("ul a.level0").length);
	    $("ul a.level0").click(function() {
	    	alert(123);
	    	return false;
	        //这里需要找到当前ul中的li，然后让li显示出来
	        //获取当前被点击的a节点
	      //  var aNode = $(this);
	        //找到当前a节点的所有li兄弟字节点
	       // var lis = aNode.nextAll("li");
	        //让子节点显示或隐藏
	       // lis.toggle("show");
	    });
	   
	 
  })

 
 
 </script>

