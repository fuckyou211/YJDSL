<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
    <link rel="stylesheet" href="../plugins/layui/css/layui.css" media="all">
    <link rel="stylesheet" type="text/css" href="http://cdn.bootcss.com/font-awesome/4.6.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="../build/css/app.css" media="all">
</head>
<body>
		<!-- 个人密码修改 -->
    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
        <legend>请输入相关信息</legend>
    </fieldset>										<!-- 提交action -->
<form class="layui-form" name="course" method="post" action="">
     <div class="layui-form-item">
     								<!-- 不可修改 -->
     <label class="layui-form-label">用户名</label>
     <div class="layui-input-inline">															
         <input name="mid" type="label" lay-verify="title" autocomplete="off" type="label" readonly="readonly" value="" class="layui-input"></input
     </div>
     </br>
     </div>
     <div class="layui-form-item">
     <label class="layui-form-label">密码</label>
     <div class="layui-input-inline">
         <input name="mpwd" type="text" lay-verify="title" autocomplete="off" placeholder="请输入密码" class="layui-input"></input>
     </div>
     </div>
     <div class="layui-form-item">
     <div class="layui-input-block">
        <input class="layui-btn" type="submit" name="submit" value="提交"/>
        <input class="layui-btn layui-btn-primary" type="reset" name="reset" value="重置" />
     </div>
     </div>
</form>

    <script src="./plugins/layui/layui.js"></script>
    <script>

    layui.use('form', function(){
     var form = layui.form; //只有执行了这一步，部分表单元素才会自动修饰成功
  
     //……
     
     //但是，如果你的HTML是动态生成的，自动渲染就会失效
     //因此你需要在相应的地方，执行下述方法来手动渲染，跟这类似的还有 element.init();
     form.render();
    }); 
    </script>
</html>