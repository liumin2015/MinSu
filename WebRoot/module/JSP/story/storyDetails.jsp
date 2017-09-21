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
		<title>故事详情页面</title>
		<link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet"> 
		<link rel="stylesheet" type="text/css" href="module/css/reset.css">
		<link rel="stylesheet" type="text/css" href="module/css/public.css">
		<!-- <link rel="stylesheet" type="text/css" href="module/css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="module/css/default2.css">
		<link rel="stylesheet" type="text/css" href="module/css/style.css"/> -->
		<link rel="stylesheet" type="text/css" href="module/css/star-rating-svg.css">
		
		<link rel="stylesheet" type="text/css" href="module/css/story/storyDetail.css">
	
	    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>  
	    <script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script> 
	    <script src="module/js/jquery.star-rating-svg.js" type="text/javascript"></script>
	    <script type="text/javascript" src="module/js/homePage/index.js"></script>
	    <script type="text/javascript" src="module/js/story/storyDetails.js"></script>
	    
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
		<div class="warpper2">
			<div class="storyIdu">
				<div class="storyuser">
					<img class="userphoto" src="img/user01.jpg">
					<lable>
						<span class="username" id="username1">Sisi</span>
						<span class="address">台南</span>
						<span class="day">今天</span>
					</lable>
				</div>
			<!-- 	<div class="storyDet">
					<span class="glyphicon glyphicon-flag"></span><span>举报</span>
					<span class="glyphicon glyphicon-thumbs-up"></span><span>7</span>
					<span class="glyphicon glyphicon-comment"></span><span>1</span>
				</div> -->
			</div>
			<div class="storyImgcontainer">
				<!-- <img class="storyImgs" src="img/storydet1.jpg">
				<img class="storyImgs" src="img/storydet2.jpg">
				<img class="storyImgs" src="img/storydet3.jpg"> -->
			</div>
			<div class="location">
				<img class="location-ico" src="img/location-ico.jpg">
				<span class="storyads">大雁山</span>
			</div>
			<hr/>
			<div class="storyArticle">
				<h2 class="storyArticleTitle">我这难以排遣的棕榈树情结啊</h2>
				<p class="storyArticleDet">爸妈在厨房里做早餐煮面条中，我跑到二楼的小阳台上晒阳光。<br>

				阳台的视野不错，前面是房东一家三口的房子，院子四周都种满了花草和棕榈树。<br>

				我对棕榈树有严重情结，那种热带植物的生命力和大大咧咧的活泼枝叶，说不上来为什么，看着就是特别招人喜欢，因为太喜欢了，身上还纹了一个棕榈树的纹身。<br>

				十月的洛杉矶还是夏天，早上的阳光温柔俏皮，舒服得刚刚好，我坐在阳台上，大口挖着原先在加州念书时就特喜欢喝的酸奶，今天竟然在房东的冰箱里重逢，眼前是我的棕榈真爱，此时此刻真是大满足～</p>
			</div>
			<div class="chosehouse">
				<h4 class="chosehouseTitle">
				<span class="houseusername" id="houseusername">Stella</span>本次旅行选择的房源</h4>
				<div class="chosehousebox">
					<img class="housesphoto" src="img/house1.jpg">
					<div class="houses-detil">
						<span class="housename" id="housename">巴黎</span>
						<span class="housetype" id="housetype">整套房子/公寓</span>
					</div>
					<div class="houses-evaluate">
						<span class="star my-rating"></span>
						<!-- <span class="evaluateNum">130条评价</span> -->
					</div>
					<!-- <div class="likeico">
						<div class="heart " id="like1" rel="like"></div>
						<div class="likeCount" id="likeCount1">1</div>
			        </div> -->
			    </div>    
		    </div>
		   <!--  <div class="evaluate">
			    <h3 class="evaluateTitle">有什么感想</h3>
			    <input class="myevaluate" type="" name="" placeholder="说点什么、、、">
			    <img class="evaluateuserImg" src="img/user01.jpg" />
		    </div> -->
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
