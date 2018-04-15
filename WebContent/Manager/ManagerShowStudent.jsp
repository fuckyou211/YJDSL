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
			
			<!-- 搜索action -->
			<form action = "" method="post">
   		    <div id = "search">
                        查找方式:<select name="type">
            <option value="sid">考生号</option>
            <option value="scar">身份证</option>
            <option value="sname">考生姓名</option>
            <option value="ssex">性别</option>
             </select>
     
                          关键字:<input type = "text" name = "value" />
               <input type ="submit" value = "搜索"/>
          </div>
            </form>
		</div>
		<!-- 显示所有教师信息 添加删除栏目 -->
		<table class="layui-table" lay-data="{height:315, url:'', page:true, id:'test',height: 'full-25'}" lay-filter="test" id="test">
        <thead>
            <tr>
                <th lay-data="{field:'sid', width:180, sort: true}">考生号</th>
                <th lay-data="{field:'sname', width:180}">考生姓名</th>
                <th lay-data="{field:'spwd', width:180}">考生登录密码</th>
                <th lay-data="{field:'scar', width:180}">考生身份证</th>
                <th lay-data="{field:'ssex', width:100}">性别</th>
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