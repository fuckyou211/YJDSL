<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
			<a href = "ManagerAddTeacher.jsp" class="layui-btn">添加新的教师</a>
			<a href = "Test.jsp" class="layui-btn">批量上传选择题</a>
			<!-- 搜索action -->
			<form action = "${pageContext.request.contextPath}/Manager/findTeacher" method="post">
   		    <div id = "search">
                        查找方式:<select name="type">
            <option value="tid">登录id</option>
            <option value="tname">教师姓名</option>
            <option value="tphone">教师电话</option>
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
                <th lay-data="{field:'tid', width:180, sort: true}">教师登录id</th>
                <th lay-data="{field:'tname', width:180}">教师姓名</th>
                <th lay-data="{field:'tpwd', width:180}">教师登录密码</th>
                <th lay-data="{field:'tphone', width:180}">教师电话</th>
                <!-- 将删除选项放入 -->
                <th lay-data="{field:'other', width:177}">选项</th>
            </tr>
        </thead>
           <!-- 插入表格 -->
          
           <c:choose>  
            <c:when test="${not empty tlist}">  
                <c:forEach items="${tlist}" var="teacher">  
                    <tr>  
                        <td>${teacher.tid}</td>  
                        <td>${teacher.tname}</td>  
                        <td>${teacher.tpwd}</td>
                        <td>${teacher.tphone}</td>   
                        <td><a href="${pageContext.request.contextPath}/Manager/deleteTeacher?tname=${teacher.tname}">删除</a></td>
                    </tr>
                </c:forEach>  
            </c:when>  
            <c:otherwise>  
               <tr>  
                   <td colspan="2">无数据!点击搜索键返回</td>  
               </tr>  
            </c:otherwise>  
        </c:choose>             
           

    </table>
    
        <script src="../plugins/layui/layui.js"></script>
    <script>
        layui.use('table', function() {
            var table = layui.table;
        });
    </script>
</body>
</html>