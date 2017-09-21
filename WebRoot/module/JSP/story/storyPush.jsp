<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="zh-CN">
	<head>
	    <meta charset="utf-8">  
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
		<base href="<%=basePath%>">
		<title>发布故事</title>

		<link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="module/css/reset.css">	  
		<link rel="stylesheet" type="text/css" href="module/css/public.css">
		<link rel="stylesheet" href="module/css/bootstrap-select.css">
		<link rel="stylesheet" href="module/css/fileinput.min.css">
		
		<link rel="stylesheet" type="text/css" href="module/css/story/storyPush.css">
	
		<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>  
	    <script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
	    <script src="module/js/bootstrap-select.js"></script>
	    <script src="module/js/fileinput.min.js"></script>
	    <script type="text/javascript" src="module/js/homePage/index.js"></script>
	    <script src="module/js/story/houseImgput.js"></script> 
    </head>
	<body>
	<input type="text" style="display:none" class="loginIDURL" name="loginIDURL" value="<%=request.getSession().getAttribute("ID")%>"/>
	<input type="text" style="display:none" class="loginNameURL" name="loginNameURL" value="<%=request.getSession().getAttribute("LOGINNAME")%>"/>
	<input type="text" style="display:none" class="userPhotoURL" name="userPhotoURL" value="<%=request.getSession().getAttribute("USERIMG")%>"/>
	<div class="warpper">
		<div class="header-top">
			<a class="logo" href="#"></a>
			<ul class="nav">
				<li class="dropdown">
				    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
					成为房东 
					<b class="caret"></b>
				    </a>
				    <ul class="dropdown-menu">
					<li><a href="module/JSP/house/housePush.jsp">发布房源</a></li>
					<li><a href="module/JSP/story/storyPush.jsp">发布故事</a></li>
				    </ul>
					</li>
					<li><a href="module/JSP/story/storyMore.jsp">故事</a></li>
					<li ><a id="login" href="#">登录</a></li>
					<li ><a id="register" href="#">注册</a></li>
			</ul>
		</div>
		<hr/>
		<div class="main">
		<div class="Leftbox">
		<div class="formbox">
		<div class="form-group alocation">
		    <label for="storyName" class="col-sm-2 control-label">故事名称</label>
		    <div class="col-sm-10">
		    <input type="text" class="form-control" id="storyName" placeholder="">
	        </div>
	    </div>
	    <div class="form-group alocation2">
		     <label for="name" class="col-sm-2 control-label">故事内容</label>
		     <div class="col-sm-10">
		    <textarea class="form-control" rows="10" cols="10"></textarea>
		    </div>
	    </div>
	    <div class="form-group alocation3">
                    <label class="col-sm-2 control-label">故事图片</label>
                    <div class="col-sm-10">
                        <input type="file" name="myfile" data-ref="url2" multiple class="col-sm-10 myfile" value=""/>
                        <input type="hidden" name="url2" value="">
                    </div>
        </div>
        <button type="" class="putStoryBtn">提交</button>
		</div>

    <script type="text/javascript">
    $(".myfile").fileinput({
                uploadUrl:"<%=basePath%>uploadFile",//上传的地址
                uploadAsync:true, //默认异步上传
                showUpload: false, //是否显示上传按钮,跟随文本框的那个
                showRemove : false, //显示移除按钮,跟随文本框的那个
                showCaption: true,//是否显示标题,就是那个文本框
                showPreview : true, //是否显示预览,不写默认为true
                dropZoneEnabled: false,//是否显示拖拽区域，默认不写为true，但是会占用很大区域
                //minImageWidth: 50, //图片的最小宽度
                //minImageHeight: 50,//图片的最小高度
                //maxImageWidth: 1000,//图片的最大宽度
                //maxImageHeight: 1000,//图片的最大高度
                //maxFileSize: 0,//单位为kb，如果为0表示不限制文件大小
                //minFileCount: 0,
                 maxFileCount: 3, //表示允许同时上传的最大文件个数
                 enctype: 'multipart/form-data',
                 validateInitialCount:true,
                 previewFileIcon: "<i class='glyphicon glyphicon-king'></i>",
                 msgFilesTooMany: "选择上传的文件数量({n}) 超过允许的最大数值{m}！",
                 allowedFileTypes: ['image'],//配置允许文件上传的类型
                 allowedPreviewTypes : [ 'image' ],//配置所有的被预览文件类型
                 allowedPreviewMimeTypes : [ 'jpg', 'png', 'gif' ],//控制被预览的所有mime类型
                 language : 'zh'
            })
            //异步上传返回结果处理
            $('.myfile').on('fileerror', function(event, data, msg) {
                console.log("fileerror");
                console.log(data);
            });
            //异步上传返回结果处理
            $(".myfile").on("fileuploaded", function (event, data, previewId, index) {
                console.log("fileuploaded");
                var ref=$(this).attr("data-ref");
                $("input[name='"+ref+"']").val(data.response.url);

            });

            //同步上传错误处理
            $('.myfile').on('filebatchuploaderror', function(event, data, msg) {
                console.log("filebatchuploaderror");
                console.log(data);
            });
            
            //同步上传返回结果处理
            $(".myfile").on("filebatchuploadsuccess", function (event, data, previewId, index) {
                console.log("filebatchuploadsuccess");
                console.log(data);
            });

            //上传前
            $('.myfile').on('filepreupload', function(event, data, previewId, index) {
                console.log("filepreupload");
            });
    </script> 


		</div>
		<div class="rightbox"></div>
		</div>
		<div class="public-footer">
			<a href="#"><img class="bottomlogo" src="img/logo1.png"></a>
			<div class="aboutus">
			    <h3 class="aboutustitle">Min民宿</h3>
				<ul>
					<a href="#"><li>关于我们</li></a>
					<a href="#"><li>help</li></a>
				</ul>
			</div>
			<div class="introduce">
			    <h3 class="aboutustitle">出租</h3>
				<ul>
				    <a href="#"><li>为什么要出租</li></a>
					<a href="#"><li>待客之道</li></a>
					<a href="#"><li>房东义务</li></a>
				</ul>
			</div>
		</div>
	</div>
	
	<!-- 登录框 -->
    <div id="loginbox" class="modal fade" >
	    <div class="modal-dialog" role="document">  
		    <div class="modal-content"> 
		        <div class="modal-header">
		            <a class="close" data-dismiss="modal">×</a>
		            <h3>登录</h3>
		        </div>
		        <div class="modal-body">
		        <div >
		            <div class="form-group">
			            <label for="userName">用户名</label>
			            <input type="text" class="form-control" id="userName1" placeholder="请输入用户名" style="height:43px;">
		            </div>
		            <div class="form-group">
			            <label for="password">密码</label>
			            <input type="password" class="form-control" id="password1" placeholder="请输入密码" style="height:43px;">
		            </div>
		            <div class="checkbox">
			            <label>
			            <input id="rememberMe" type="checkbox">记住我
			            </label>
		            </div>
		            <button id="loginbtn" class="loginbtn" onclick="login()">登录</button>
		        </div>
		        </div>
		        <div class="modal-footer">
		            <a href="#" class="btn" data-dismiss="modal">关闭</a>
		        </div>
		    </div>
	    </div>
    </div>
    
    <!-- 注册框 -->
    <div id="registbox" class="modal fade" >
	    <div class="modal-dialog" role="document">  
		    <div class="modal-content"> 
		        <div class="modal-header">
		            <a class="close" data-dismiss="modal">×</a>
		            <h3>注册</h3>
		        </div>
		        <div class="modal-body">
		        <div role="form">
		            <div class="form-group" style="display:none;">
			            <label for="userID">用户ID</label>
			            <input type="text" class="form-control" id="userID">
		            </div>
		            <div class="form-group">
			            <label for="phoneNumber">手机号</label> 
			            <input type="text" class="form-control" id="phoneNumber" placeholder="请输入手机号" onblur="fixedCase()" style="height:43px;">
			            <label for="phoneNumber" class="col-sm-3 control-label1" id="fixedPrompt"></label>
		            </div>
		            <div class="form-group">
			            <label for="userName">用户名</label>
			            <input type="text" class="form-control" id="userName2" placeholder="请输入用户名" onblur="upperCase()" style="height:43px;">
			            <label for="userName" class="col-sm-3 control-label1" id="clientNoPrompt"></label>
		            </div>
		            <div class="form-group">
			            <label for="password">密码</label>
			            <input type="password" class="form-control" id="password2" onblur="passwordCase()" placeholder="请输入密码" style="height:43px;">
			            <label for="password" class="col-sm-3 control-label1" id="passwordPrompt"></label>
		            </div>
		            <div class="form-group">
			            <label for="email">邮箱</label>
			            <input type="text" class="form-control" id="email" placeholder="请输入邮箱" style="height:43px;">
		            </div>
		            <div class="form-group">
			            <label for="introduce">简介</label>
			            <input type="text" class="form-control" id="introduce" placeholder="" style="height:43px;">
		            </div>
		            <div class="form-group ">
			            <label for="age">年龄</label>
			            <input type="text" class="form-control" id="age" placeholder="" style="height:43px;">
		            </div>
		            <div class="form-group ">
			            <label for="sex">性别</label>
			            <label>
                        <input type="radio" name="optionsRadios" id="man" value="man" checked> 男
                        </label>
                        <label>
                        <input type="radio" name="optionsRadios" id="woman" value="woman"> 女
                        </label>
			        </div>
			        <button id="registerbtn" class="loginbtn" onclick="register()">注册</button>
		            
		        </div>
		        </div>
		    </div>
	    </div>
    </div>
	</body>
</html>
