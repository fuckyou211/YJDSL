<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>教师页</title>
    <link rel="stylesheet" href="./plugins/layui/css/layui.css" media="all">
    <link rel="stylesheet" type="text/css" href="http://cdn.bootcss.com/font-awesome/4.6.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="./build/css/app.css" media="all">
</head>

<body>
    <div class="layui-layout layui-layout-admin kit-layout-admin">
        <div class="layui-header">
            <div class="layui-logo">在线考试系统管理</div>
            <div class="layui-logo kit-logo-mobile">K</div>
            <ul class="layui-nav layui-layout-left kit-nav" kit-one-level>
            </ul>
            <ul class="layui-nav layui-layout-right kit-nav">
                <li class="layui-nav-item">
                </li>
                <!-- 教师退出登录 -->
                <li class="layui-nav-item"><a href="./LoginFace.jsp"><i class="fa fa-sign-out" aria-hidden="true"></i> 注销</a></li>
            </ul>
        </div>

        <div class="layui-side layui-bg-black kit-side">
            <div class="layui-side-scroll">
                <div class="kit-side-fold"><i class="fa fa-navicon" aria-hidden="true"></i></div>
                <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
                <ul class="layui-nav layui-nav-tree" lay-filter="kitNavbar" kit-navbar>
                    <li class="layui-nav-item">
                        <a class="" href="javascript:;"><i class="fa fa-plug" aria-hidden="true"></i><span>个人信息管理</span></a>
                        <dl class="layui-nav-child">
                            <dd>													<!-- url -->
                                <a href="javascript:;" kit-target data-options="{url:'./Teacher/TeacherChangeSelf.jsp',icon:'&#xe6c6;',title:'个人信息',id:'1'}">
                                    <i class="layui-icon">&#xe6c6;</i><span> 账号密码修改</span></a>
                            </dd>

                        
                        </dl>
                    </li>
                    <li class="layui-nav-item layui-nav-itemed">
                        <a href="javascript:;"><i class="fa fa-plug" aria-hidden="true"></i><span>试题管理</span></a>
                        <dl class="layui-nav-child">
                            <dd><a href="javascript:;" kit-target data-options="{url:'./Teacher/TeacherChooseProblem.jsp',icon:'&#xe658;',title:'出题',id:'2'}"><i class="layui-icon">&#xe658;</i><span>新增试题</span></a></dd>
                        </dl>
                        <dl class="layui-nav-child">
                            <dd><a href="javascript:;" kit-target data-options="{url:'./Teacher/TeacherWritePaperMessage.jsp',icon:'&#xe658;',title:'出卷',id:'3'}"><i class="layui-icon">&#xe658;</i><span>新增试卷</span></a></dd>
                        </dl>
                         <dl class="layui-nav-child">
                            <dd><a href="javascript:;" kit-target data-options="{url:'./Teacher/TeacherPickPaper.jsp',icon:'&#xe658;',title:'考试',id:'4'}"><i class="layui-icon">&#xe658;</i><span>发布考试</span></a></dd>
                        </dl>  
                        <a class="" href="javascript:;"><i class="fa fa-plug" aria-hidden="true"></i><span>试卷维护</span></a>
                        <dl class="layui-nav-child">
                            <dd>
                                <a href="javascript:;" kit-target data-options="{url:'./Teacher/TeacherManagePaper.jsp',icon:'&#xe6c6;',title:'试卷',id:'5'}">
                                    <i class="layui-icon">&#xe6c6;</i><span>试卷维护</span></a>
                            </dd>
                        </dl>
                         <dl class="layui-nav-child">
                            <dd>
                                <a href="javascript:;" kit-target data-options="{url:'./Manager/ManagerShowType.jsp',icon:'&#xe6c6;',title:'类型',id:'6'}">
                                    <i class="layui-icon">&#xe6c6;</i><span>试题类型</span></a>
                            </dd>
                        </dl>                          
                    </li>


                </ul>
            </div>
        </div>
        <div class="layui-body" id="container">
            <!-- 内容主体区域 -->
            <div style="padding: 15px;">主体内容加载中,请稍等...</div>
        </div>

        <div class="layui-footer">
            <!-- 底部固定区域 -->
            2017 &copy;
            <a href="http://kit.zhengjinfan.cn/"></a>

        </div>
    </div>

    <script src="./plugins/layui/layui.js"></script>
    <script>
        var message;
        layui.config({
            base: 'build/js/'
        }).use(['app', 'message'], function() {
            var app = layui.app,
                $ = layui.jquery,
                layer = layui.layer;
            //将message设置为全局以便子页面调用
            message = layui.message;
            //主入口
            app.set({
                type: 'iframe'
            }).init();
            $('#pay').on('click', function() {
                layer.open({
                    title: false,
                    type: 1,
                    content: '<img src="/build/images/pay.png" />',
                    area: ['500px', '250px'],
                    shadeClose: true
                });
            });
        });
    </script>
</body>

</html>