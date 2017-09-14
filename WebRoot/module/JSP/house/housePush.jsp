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
		<title>发布房源</title>
		<link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="module/css/bootstrap-datetimepicker.min.css">
		<link rel="stylesheet" type="text/css" href="module/css/reset.css">	  
		<link rel="stylesheet" type="text/css" href="module/css/public.css">
		<link rel="stylesheet" type="text/css" href="module/css/house/housePush.css">
		<link rel="stylesheet" href="module/css/bootstrap-select.css">
		<link rel="stylesheet" href="module/css/fileinput.min.css">

		<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>  
	    <script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script> 
	    <script src="module/js/bootstrap-datetimepicker.js" type="text/javascript"></script>
	    <script src="module/js/bootstrap-datetimepicker.zh-CN.js" type="text/javascript"></script>
	    <script src="module/js/bootstrap-select.js"></script>
	    <script src="module/js/fileinput.min.js"></script>
	    
	    <script src="module/js/house/houseImgput.js"></script>
    
	    <script type="text/javascript">  
	    $(function(){
	    	 $('.starrentTime').datetimepicker({  
	    	 	format: 'yyyy-MM-dd',  
	            language: 'zh-CN',  
	            pickTime: false  
	        }).on('changeDate',function(){  
	        	$(this).datetimepicker('hide');  
	        });  
	         $('.endrentTime').datetimepicker({  
	    	 	format: 'yyyy-MM-dd',  
	            language: 'zh-CN',  
	            pickTime: false  
	        }).on('changeDate',function(){  
	        	$(this).datetimepicker('hide');  
	        });
	    });
	     
	    </script>
	</head>
	
	<body>
	<div class="warpper">
		<div class="header-top">
			<a class="logo" href="#"></a>
			<ul class="nav">
				<a href="#"><li>成为房东</li></a>
				<a href="#"><li>故事</li></a>
				<a id="travel" href="#"><li >旅程</li></a>
				<a id="mail" href="#"><li >心愿单</li></a>
				<a id="userImg" href="#"><img class="userImg" src="img/user01.jpg"></a>
			</ul>
		</div>
		<hr/>
		<div class="main">
		<div class="Leftbox">
			<p class="title"><span class="userName">珉珉就</span>，你好！我们开始发布您的房源吧。</p>
			<hr />
			<div class="formbox">
			    <div class="form-group">
			        <input class="houseName" type="" name="" placeholder="房源名称">
			    </div>
			    <div class="form-group alocation">
			        <div class="col-lg-6">
			        <select id="basic" class="selectpicker show-tick form-control">
			            <option>整套房子</option>
			            <option>公寓</option>
			            <option>别墅</option>
			            <option>合租房间</option>
			        </select>
			      </div>
			      <div class="col-lg-6">
			        <select id="basic" class="selectpicker show-tick form-control">
			            <option>独立房间</option>
			            <option>共用房间</option>
			        </select>
			      </div>
			    </div>
			    <div class="form-group alocation">
				    <div class="col-lg-4">
				        <select id="basic" class="selectpicker show-tick form-control">
				            <option>1位房客</option>
				            <option>2位房客</option>
				            <option>3位房客</option>
				            <option>4位房客</option>
				        </select>
				    </div>
				    <div class="col-lg-4">
				        <select id="basic" class="selectpicker show-tick form-control">
				            <option>1张床</option>
				            <option>2张床</option>
				            <option>3张床</option>
				            <option>4张床</option>
				        </select>
				    </div>
				    <div class="col-lg-4">
				        <select id="basic" class="selectpicker show-tick form-control">
				            <option>1厕所</option>
				            <option>2厕所</option>
				            <option>3厕所</option>
				            <option>4厕所</option>
				        </select>
				    </div>
			    </div>
			        
			    <div class="form-group">
			        <input class="adress" type="" name="" placeholder="中国重庆" > 
			        <!-- placeholder根据用户的地址来读取 -->
			    </div>
			    <div class="form-group">
			        <input class="starrentTime" type="" name="" placeholder="开始出租时间" > --
			        <input class="endrentTime" type="" name="" placeholder="结束出租时间" > 
			    </div>
			    <div class="form-group">
			         <input class="price" type="" name="" placeholder="设置出租价格">
			         <div class="col-lg-4">
				        <select id="basic" class="selectpicker show-tick form-control">
				            <option>严格</option>
				            <option>中等</option>
				            <option>极严30天</option>
				            <option>灵活</option>
				        </select>
				    </div> 
			    </div>
			    <div class="form-group">
			       <label for="name">优惠政策</label>
			        <textarea class="priceRule"></textarea>
			    </div>
			    <div class="form-group">
			        <label for="name">入住规则</label>
			        <textarea class="houseRule"></textarea>
			    </div>
			    <div class="form-group">
			        <label for="name">房屋简介</label>
			        <textarea class="houseInd"></textarea>
			    </div>
			    <div class="form-group">
			        <label for="name">房屋简介</label>
			        <textarea class="houseInd"></textarea>
			    </div>
			    <div class="form-group">
			        <label for="name">房屋简介</label>
			        <textarea class="houseInd"></textarea>
			    </div>
			    <div class="form-group">
                    <label class="col-sm-2 control-label">房源封面</label>
                    <div class="col-sm-10">
                        <input type="file" name="myfile" data-ref="url2" multiple class="col-sm-10 myfile" value=""/>
                        <input type="hidden" name="url2" value="">
                    </div>
                </div>
                <button type="" class="putHouseBtn">提交</button>
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
    
	</body>
</html>
