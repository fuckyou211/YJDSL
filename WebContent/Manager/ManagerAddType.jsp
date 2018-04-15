<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    %>
<!DOCTYPE html>
<html>
<head>
						<!-- 新增类型页面 -->
<meta charset="UTF-8">
<meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="../plugins/layui/css/layui.css" media="all">
<title>添加新的类型</title>
</head>
<body>
    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
        <legend>请输入相关的信息</legend>
    </fieldset>									<!-- action -->		
<form class="layui-form" name="course" method="post" action="">
     <div class="layui-form-item">
     <label class="layui-form-label">类型名称</label>
     <div class="layui-input-inline">
         <input name="tid" type="text" lay-verify="title" autocomplete="off" placeholder="名称" class="layui-input"></input>
     </div>
     </div>
     <div class="layui-form-item">
     	<div class="layui-input-block">
        <input class="layui-btn" type="submit" name="submit" value="提交"/>
        <input class="layui-btn layui-btn-primary" type="reset" name="reset" value="重置" />
        </div>
     </div>
</form>

    <script src="../plugins/layui/layui.js"></script>
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