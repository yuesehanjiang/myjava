<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript"  src="${ctp }/jquery/jquery-2.1.1.min.js"></script>
<script type="text/javascript"  src="${ctp }/plugin/ztree/jquery.ztree.all-3.5.min.js"></script>
 <link  rel="stylesheet" href="${ctp }/plugin/ztree/zTreeStyle.css"/>
</head>
<style>
    span{
     display:block;
     width:119px;
     background:pink;
     }
</style>
<body>

   <ul id="ss" class="ztree">
   </ul>

 

     
</body>

<script type="text/javascript">
var setting = {
        data: {
              simpleData: {
                    enable: true,
                                     　idKey: "id",
                   pIdKey: "pid",
                   title:"mname"
              }
             
         
        }
  };
   var znod=null;
  /*  $.post("${ctp}/menu/all",function(data){
	   var zNodes =data;
   },"json") */
	
   
 // var zNodes =znod;
 
  
  
  

  $(function(){
	  $.post("${ctp}/menu/all",function(data){
		   var zNodes =data;
	  $.fn.zTree.init($("#ss"), setting, zNodes);
      
	   },"json") 
        alert(123);
  })

 
 
 </script>

</html>