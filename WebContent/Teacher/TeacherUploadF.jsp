<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>	<!-- 教师页 新增试卷 批量上传选择题  -->

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link rel="stylesheet" href="../plugins/layui/css/layui.css" media="all">
<link rel="stylesheet" type="text/css" href="http://cdn.bootcss.com/font-awesome/4.6.0/css/font-awesome.min.css">
<link rel="stylesheet" href="../build/css/app.css" media="all">
</head>
<body>
	<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
        <legend>批量上传填空题</legend>
    </fieldset>	
    <div class="layui-form-item">		<!-- action -->
    <form class="layui-form" action="${pageContext.request.contextPath}/Teacher/uploadF" enctype="multipart/form-data" method="post" onsubmit="return check();">
    	<table>
    		<tr>
				<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
       			 <legend>选择相应的excel文件</legend>
    			</fieldset>	
				<td><input type="file" name="filename" accept="xlsx" size="200"></td> 
				
				 
       	</table>
       	<div class="layui-form-item">
     	<div class="layui-input-block">
       		<input class="layui-btn" type="submit" name="submit" value="导入"/>
     	</div>
     </form>
     </div>
         <script src="../plugins/layui/layui.js"></script>
    <script type="text/javascript"> 
    function check() {  
          var excel_file = $("#excel_file").val();  
          if (excel_file == "" || excel_file.length == 0) {  
              alert("请选择文件路径！");  
              return false;  
          } else {  
             return true;  
          }  
     } 
    
    $(document).ready(function () {  
           var msg="";  
           if($("#importMsg").text()!=null){  
               msg=$("#importMsg").text();  
           }  
           if(msg!=""){  
               alert(msg);  
           }  
    });  
 </script>
 
    <script>

    layui.use('form', function(){
     var form = layui.form; //只有执行了这一步，部分表单元素才会自动修饰成功
  
     //……
     
     //但是，如果你的HTML是动态生成的，自动渲染就会失效
     //因此你需要在相应的地方，执行下述方法来手动渲染，跟这类似的还有 element.init();
     form.render();
    }); 
    </script>	
</body>
</html>