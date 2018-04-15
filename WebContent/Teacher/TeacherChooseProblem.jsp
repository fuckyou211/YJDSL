<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>		<!-- 教师页 选择题目类型 -->
<%  
 String importMsg="";  
 if(request.getSession().getAttribute("msg")!=null){  
    importMsg=request.getSession().getAttribute("msg").toString();  
 }  
 request.getSession().setAttribute("msg", "");  
 %> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
    <link rel="stylesheet" href="../plugins/layui/css/layui.css" media="all">
    <link rel="stylesheet" type="text/css" href="http://cdn.bootcss.com/font-awesome/4.6.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="../build/css/app.css" media="all">
</head>
<body>
	<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
        <legend>单题上传</legend>
    </fieldset>
    <div class="layui-form-item">
            <a href="../Teacher/TeacherFoundC.jsp"><button class="layui-btn" lay-submit="" lay-filter="demo1" >选择题</button></a>
            <a href="../Teacher/TeacherFoundF.jsp"><button class="layui-btn" lay-submit="" lay-filter="demo1">填空题</button></a>
            <a href="../Teacher/TeacherFoundM.jsp"><button class="layui-btn" lay-submit="" lay-filter="demo1">主观题</button></a>
    </div>
   	<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
        <legend>批量上传</legend><font id="importMsg" color="red"><%=importMsg%></font><input type="hidden"/>
    </fieldset>
    <div class="layui-form-item">
            <a href="../Teacher/TeacherUploadC.jsp"><button class="layui-btn" lay-submit="" lay-filter="demo1" >选择题</button></a>
            <a href="../Teacher/TeacherUploadF.jsp"><button class="layui-btn" lay-submit="" lay-filter="demo1">填空题</button></a>
            <a href="../Teacher/TeacherUploadM.jsp"><button class="layui-btn" lay-submit="" lay-filter="demo1">主观题</button></a>
    </div>
    
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
    
</body>
</html>