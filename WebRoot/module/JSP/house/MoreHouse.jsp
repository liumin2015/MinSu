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
		<title>更多房源</title>

		<link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet"> 
		<link rel="stylesheet" type="text/css" href="module/css/bootstrap-theme.css">
		<link rel="stylesheet" type="text/css" href="module/css/bootstrap-datetimepicker.min.css">
		<link rel="stylesheet" type="text/css" href="module/css/star-rating-svg.css">
		
		<link rel="stylesheet" type="text/css" href="module/css/reset.css">
		<link rel="stylesheet" type="text/css" href="module/css/public.css">
		<link rel="stylesheet" type="text/css" href="module/css/house/houseMore.css">
		
<!-- 		<link rel="stylesheet" type="text/css" href="module/css/normalize.css" />
	    <link rel="stylesheet" type="text/css" href="module/css/default2.css">
	    <link rel="stylesheet" type="text/css" href="module/css/style.css"/> -->
		
	
	    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>  
	    <script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
	  <!--   <script type="text/javascript" src="module/js/star-rating.js" ></script> -->
	    <script src="module/js/jquery.star-rating-svg.js" type="text/javascript"></script>
	    
	     <script src="module/js/homePage/index.js" type="text/javascript"></script>
	      <script src="module/js/house/houseMore.js" type="text/javascript"></script>
	</head>
	<body>
	<input type="text" style="display:none" class="loginIDURL" name="loginIDURL" value="<%=request.getSession().getAttribute("ID")%>"/>
	<input type="text" style="display:none" class="loginNameURL" name="loginNameURL" value="<%=request.getSession().getAttribute("LOGINNAME")%>"/>
	<input type="text" style="display:none" class="userPhotoURL" name="userPhotoURL" value="<%=request.getSession().getAttribute("USERIMG")%>"/>
	<div class="warpper">
		<div class="header-top">
			<a class="logo" href="#"></a>
			<div class="houseplaceSearchbox">
			<input class="houseplaceSearch" type="" name="" placeholder="房源位置">
			<span class="searchico glyphicon glyphicon-search"></span>
			</div>
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
		<!-- <div class="houseSearch">
			<button class="peopleNum" type="" name="">人数<span class="glyphicon glyphicon-chevron-down"></span></button>
			<button class="minMoney" type="" name="">最低价格<span class="glyphicon glyphicon-chevron-down"></span></button>
			<button class="maxMoney" type="" name="">最高价格<span class="glyphicon glyphicon-chevron-down"></span></button>
			<button class="starTime" type="" name="">入住时间<span class="glyphicon glyphicon-chevron-down"></span></button>
			<button class="endTime" type="" name="">退房时间<span class="glyphicon glyphicon-chevron-down"></span></button>
			<button class="houseType" type="" name="">房源类型<span class="glyphicon glyphicon-chevron-down"></span></button>
		</div> -->
		<div class="houseMain">
			<div class="houseShow" id="houseShow">
			  <!--   <div class="houseslist ">
			        <div class="likeico">
						<div class="heart " id="like1" rel="like"></div>
						<div class="likeCount" id="likeCount1">1</div>
			        </div>
					<img id="houses-photo" class="houses-photo" src="img/house1.jpg">
					<div class="houses-detil">
						<span class="price" id="price">￥1200</span>
						<span class="houseads" id="houseads">巴黎</span>--
						<span class="housetype" id="housetype">整套房子/公寓</span>
						<img class="houseHowner" src="img/user01.jpg"></img>
				    </div>
				    <div class="houses-evaluate">
						<span class="star"></span>
						<span class="evaluateNum">130条评价</span>
					</div>
				</div> -->
				
			</div>
			<!-- <div class="mapContainer"></div> -->
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
