<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>	<!-- 教师页 新增试卷 增加选择题  -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link rel="stylesheet" href="../plugins/layui/css/layui.css" media="all">
<link rel="stylesheet" type="text/css" href="http://cdn.bootcss.com/font-awesome/4.6.0/css/font-awesome.min.css">
<link rel="stylesheet" href="../build/css/app.css" media="all">
</head>
<body>
	<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
        <legend>选择题</legend>
    </fieldset>			<!-- action -->
    <form class="layui-form" action="">
   		<table class="layui-table" lay-data="{height:315, url:'', page:true, id:'test',height: 'full-25'}" lay-filter="test" id="test">
        <thead>
            <tr>
                <th lay-data="{field:'cid', width:180, sort: true}">选择题号</th>
                <th lay-data="{field:'ctype', width:180}">填空题分类</th>
                <th lay-data="{field:'cque', width:180}">题目</th>
                <th lay-data="{field:'cans', width:180}">答案</th>
                <!-- 将选中选项放入 -->
                <th lay-data="{field:'other', width:177}">加入试卷</th>
            </tr>
        </thead>
           <!-- 插入表格 -->
    </table>
        <div class="layui-form-item">
     	<div class="layui-input-block">
       		<input class="layui-btn" type="submit" name="submit" value="进入填空题"/>
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
            <script src="../plugins/layui/layui.js"></script>
    <script>
        layui.use('table', function() {
            var table = layui.table;
        });
    </script>
</body>
</html>