<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
			<!-- 教师管理试卷页面 -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
 <link rel="stylesheet" href="../plugins/layui/css/layui.css" media="all">
</head>
<body>
<div>		<!-- 搜索 按命题人 或 试卷名 -->
    
    <div id = "search">
    <form action = "" method="">
     查找方式:<select name="type">
     <option value="pman">命题人</option>
     <option value="pname">试卷名</option>
     </select>
     
     关键字:<input type = "text" name = "value" />
     <input type ="submit" value = "搜索"/>
     </form>
    </div>
    


</div>
<table class="layui-table" lay-data="{height:315, url:'', page:true, id:'test',height: 'full-25'}" lay-filter="test" id="test">
        <thead>
            <tr>
                <th lay-data="{field:'pid', width:120, sort: true}">卷号</th>
                <th lay-data="{field:'pman', width:120}">命题人</th>
                <th lay-data="{field:'pname', width:120}">试卷名</th>
                <th lay-data="{field:'pflag', width:120}">是否发布</th>
                <!-- 将发布选项放入 -->
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