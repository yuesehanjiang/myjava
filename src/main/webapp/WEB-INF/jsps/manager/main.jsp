<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	
	<link rel="stylesheet" type="text/css"
     href="${ctp }/jquery/jquery-easyui-1.4.1/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
     href="${ctp }/jquery/jquery-easyui-1.4.1/themes/icon.css" />

<script type="text/javascript" src="${ctp }/jquery/jquery-easyui-1.4.1/jquery.min.js"></script>

<script type="text/javascript"
     src="${ctp }/jquery/jquery-easyui-1.4.1/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${ctp }/jquery/jquery-easyui-1.4.1/locale/easyui-lang-zh_CN.js"></script>

	
	
	
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
	.main{
	  margin-top:200px;
	}
	.mide{
	   margin-top:40px;
	   width:1908px;
	   height:150px;
	  background:pink;
	}
	.ye{
	display:block;
	  margin-top:20px;
	  margin-left:50px;
	  width:90px;
	  height:70px;
	  background: gray;
	  float:left;
	}
	.ye1{
	   margin-left:300px;
	
	}
	.ks{
	  display:block;
	  margin-top:70px;
	
	}
	
	.right{
	maring-left:150px;
	   float:right;
	  background:yellow;
      margin-top:-970px;
	  clear:both;
	  height:1050px;
	}
	.easy{
	  float:left;
	}
	.easyright{
	  margin-top:-400px;
	   margin-right:10px;
	   float:right;
	}
	</style>
  </head>

  <body class="easyui-layout">

	<%@include file="/WEB-INF/includes/nav-bar.jsp" %>
        <div class="mide">
           <span class="ye"><span  class="ks">我的考勤</span></span>
             <span class="ye"><span  class="ks">我的考勤</span></span>   
               <span class="ye ye1"><span  class="ks">我的考勤</span></span>    
               <span class="ye"><span  class="ks">我的考勤</span></span>   
             <span class="ye"><span  class="ks">我的考勤</span></span>              
           <span class="ye"><span  class="ks">我的考勤</span></span>  
           <span class="ye"><span  class="ks">我的考勤</span></span> 
          <span class="ye"><span  class="ks">我的考勤</span></span>  
         <span class="ye"><span  class="ks">我的考勤</span></span>   
              <span class="ye"><span  class="ks">我的考勤</span></span>    
          <span class="ye"><span  class="ks">我的考勤</span></span> 
        </div>
    <div class="container-fluid  main">
      <div class="row ">
        
        <%@include file="/WEB-INF/includes/user_menu.jsp" %>
        
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main right">
               
         <div id="cc" class="easyui-layout easy" style="width:400px;height:400px;">   
		       <div data-options="region:'center',title:'企业宣传'" style="padding:5px;background:#eee;"></div>   
		</div>  

           <div id="cc" class="easyui-layout easy" style="width:400px;height:400px;">   
		    <div data-options="region:'center',title:'企业公告'" style="padding:5px;background:#eee;"></div>   
		  </div>  
           <div id="cc" class="easyui-layout easy" style="width:400px;height:400px;">   
		    <div data-options="region:'center',title:'流程办理 '" style="padding:5px;background:#eee;"></div>   
		  </div> 
           <div id="cc" class="easyui-layout easy" style="width:400px;height:400px;">   
		    <div data-options="region:'center',title:'来访信息'" style="padding:5px;background:#eee;"></div>   
		  </div> 
		  
		   <div id="cc" class="easyui-layout easy easyright" style="width:250px;height:830px;">   
		    <div data-options="region:'center',title:'及时消息'" style="padding:5px;background:#eee;"></div>   
		  </div> 

               <span id="ss_A_span">点我</span> 
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
			    
			 
			  
			var mm=    escapeJquery("ss_1_span");
		
			    $("a.level0 span").dblclick(function(){
			      
			    	alert(123);
			    });
			    })
          
            function escapeJquery(srcString) {
            	 // 转义之后的结果
            	 var escapseResult = srcString;

            	 // javascript正则表达式中的特殊字符
            	 var jsSpecialChars = ["\\", "^", "$", "*", "?", ".", "+", "(", ")", "[",
            	   "]", "|", "{", "}"];

            	 // jquery中的特殊字符,不是正则表达式中的特殊字符
            	 var jquerySpecialChars = ["~", "`", "@", "#", "%", "&", "=", "'", "\"",
            	   ":", ";", "<", ">", ",", "/"];

            	 for (var i = 0; i < jsSpecialChars.length; i++) {
            	  escapseResult = escapseResult.replace(new RegExp("\\"
            	        + jsSpecialChars[i], "g"), "\\"
            	      + jsSpecialChars[i]);
            	 }

            	 for (var i = 0; i < jquerySpecialChars.length; i++) {
            	  escapseResult = escapseResult.replace(new RegExp(jquerySpecialChars[i],
            	      "g"), "\\" + jquerySpecialChars[i]);
            	 }

            	 return escapseResult;
            	}
            
            
            
        </script>
  </body>
</html>
