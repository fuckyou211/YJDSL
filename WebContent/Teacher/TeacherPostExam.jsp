<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>	<!-- 教师页 发布考试 根据试卷信息表格式 -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link rel="stylesheet" href="../plugins/layui/css/layui.css" media="all">
<link rel="stylesheet" type="text/css" href="http://cdn.bootcss.com/font-awesome/4.6.0/css/font-awesome.min.css">
<link rel="stylesheet" href="../build/css/app.css" media="all">
</head>
<body>
	<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
        <legend>发布所选考试</legend>
    </fieldset>			<!-- action -->
    <form class="layui-form" action="">
       	<div class="layui-form-item">
            <label class="layui-form-label">发布者</label>
            <div class="layui-input-inline">
                <input type="text" name="eposter" lay-verify="title" autocomplete="off" placeholder="请按分钟输入考试时间" class="layui-input">
            </div>
        </div>
   		<div class="layui-form-item">
            <label class="layui-form-label">考试时间</label>
            <div class="layui-input-inline">
                <input type="text" name="etime" lay-verify="title" autocomplete="off" placeholder="请按分钟输入考试时间" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
             <label class="layui-form-label">截止日期</label>
             <div class="layui-input-inline">
                 <input type="text" name="edate" id="date" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">
             </div>
        </div>
        </div>    

        <div class="layui-form-item">
     	<div class="layui-input-block">
       		<input class="layui-btn" type="submit" name="submit" value="发布"/>
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
    <script>
        layui.use(['form', 'layedit', 'laydate'], function() {
            var form = layui.form,
                layer = layui.layer,
                layedit = layui.layedit,
                laydate = layui.laydate;

            //日期
            laydate.render({
                elem: '#date'
            });
            laydate.render({
                elem: '#date1'
            });

            //创建一个编辑器
            var editIndex = layedit.build('LAY_demo_editor');

            //自定义验证规则
            form.verify({
                title: function(value) {
                    if (value.length < 5) {
                        return '标题至少得5个字符啊';
                    }
                },
                pass: [/(.+){6,12}$/, '密码必须6到12位'],
                content: function(value) {
                    layedit.sync(editIndex);
                }
            });

            //监听指定开关
            form.on('switch(switchTest)', function(data) {
                layer.msg('开关checked：' + (this.checked ? 'true' : 'false'), {
                    offset: '6px'
                });
                layer.tips('温馨提示：请注意开关状态的文字可以随意定义，而不仅仅是ON|OFF', data.othis)
            });

            //监听提交
            form.on('submit(demo1)', function(data) {
                layer.alert(JSON.stringify(data.field), {
                    title: '最终的提交信息'
                })
                return false;
            });


        });
    </script>
</body>
</html>