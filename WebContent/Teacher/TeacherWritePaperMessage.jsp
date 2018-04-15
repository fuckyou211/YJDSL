<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>	<!-- 教师页 填写试卷信息 默认没有发布-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link rel="stylesheet" href="../plugins/layui/css/layui.css" media="all">
<link rel="stylesheet" type="text/css" href="http://cdn.bootcss.com/font-awesome/4.6.0/css/font-awesome.min.css">
<link rel="stylesheet" href="../build/css/app.css" media="all">
</head>
<body>
	<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
        <legend>填写试卷信息</legend>
    </fieldset>			<!-- action -->
    <form class="layui-form" action="">
   		<div class="layui-form-item">
            <label class="layui-form-label">填写试卷信息</label>
            <div class="layui-input-block">
                <input type="text" name="pid" lay-verify="title" autocomplete="off" placeholder="试卷信息" class="layui-input">
            </div>
        </div>
   		<div class="layui-form-item">
            <label class="layui-form-label">填写命题人</label>
            <div class="layui-input-block">
                <input type="text" name="pman" lay-verify="title" autocomplete="off" placeholder="命题人" class="layui-input">
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