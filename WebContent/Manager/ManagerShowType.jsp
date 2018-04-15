<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="../plugins/layui/css/layui.css" media="all">
</head>
<body>
		<div>
			<a href = "ManagerAddType.jsp" class="layui-btn">添加新试题类型</a>
		</div>
		<!-- 显示所有类型信息 添加删除栏目 -->
		<table class="layui-table" lay-data="{height:315, url:'', page:true, id:'test',height: 'full-25'}" lay-filter="test" id="test">
        <thead>
            <tr>
                <th lay-data="{field:'tid', width:180, sort: true}">类型名称</th>
                <!-- 将删除选项放入 -->
                <th lay-data="{field:'other', width:177}">选项</th>
            </tr>
        </thead>
           <!-- 插入表格 -->
    </table>
    
    
        <script src="../plugins/layui/layui.js"></script>
    <script>
        layui.use('table', function() {
            var table = layui.table;
        });
    </script>
</body>
</html>