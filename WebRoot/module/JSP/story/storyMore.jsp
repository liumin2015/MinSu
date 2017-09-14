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
		<title>更多故事</title>
		<link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">  
		<link rel="stylesheet" type="text/css" href="module/css/animate.css">
		<link rel="stylesheet" type="text/css" href="module/css/reset.css">
		<link rel="stylesheet" type="text/css" href="module/css/public.css">
		
		<link rel="stylesheet" type="text/css" href="module/css/story/storyMore.css">
	
	    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>  
	    <script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script> 
    </head>
	<body>
	<div class="warpper">
		<div class="header-top">
			<a class="logo" href="#"></a>
			<ul class="nav">
				<a href="#"><li>成为房东</li></a>
				<a href="#"><li>故事</li></a>
				<a id="travel" href="#"><li >旅程</li></a>
				<a id="mail" href="#"><li >收件箱</li></a>
				<a id="userImg" href="#"><img class="userImg" src="img/user01.jpg"></a>
			</ul>
		</div>
		<hr/>
		<div class="storymain">
			<div class="storymain-head">
				<h1>故事</h1>
				<form class="storysearch">
					<input class="storysearchText" type="" name="" />
					<button class="searchbtn" id="search">搜索</button>
				</form>
			</div>
			<ul class="location">
				<li >巴黎</li>
				<li >巴黎</li>
				<li >巴黎</li>
				<li >巴黎</li>
				<li >巴黎</li>
			</ul>
			<hr/>
			<div class="storyContainer">
				    <div class="story-list">
					    <img class="storypPhoto" id="storypPhoto" src="img/story1.jpg">
					    <div class="story-detil">
						    <span class="storyaddress" id="storyaddress">伦敦</span>
						    <span class="storyitd" id="storyitd">住在大厨家里是怎样的体验？早餐美到舍不得吃！</span>
					    </div>
					    <div class="story-evaluate">
						    <img class="userphoto" id="userphoto" src="img/user01.jpg">
						    <span class="glyphicon glyphicon-heart"></span><span class="zanNum">26</span>
						    <span class="glyphicon glyphicon-comment"></span><span class="evaluateNum">6</span>
					    </div>
				    </div>
				    <div class="story-list">
					    <img class="storypPhoto" id="storypPhoto" src="img/story2.jpg">
					    <div class="story-detil">
						    <span class="storyaddress" id="storyaddress">伦敦</span>
						    <span class="storyitd" id="storyitd">住在大厨家里是怎样的体验？早餐美到舍不得吃！</span>
					    </div>
					    <div class="story-evaluate">
						    <img class="userphoto" id="userphoto" src="img/user01.jpg">
						    <span class="glyphicon glyphicon-heart"></span><span class="zanNum">26</span>
						    <span class="glyphicon glyphicon-comment"></span><span class="evaluateNum">6</span>
					    </div>
				    </div>
				    <div class="story-list">
					    <img class="storypPhoto" id="storypPhoto" src="img/story3.jpg">
					    <div class="story-detil">
						    <span class="storyaddress" id="storyaddress">伦敦</span>
						    <span class="storyitd" id="storyitd">住在大厨家里是怎样的体验？早餐美到舍不得吃！</span>
					    </div>
					    <div class="story-evaluate">
						    <img class="userphoto" id="userphoto" src="img/user01.jpg">
						    <span class="glyphicon glyphicon-heart"></span><span class="zanNum">26</span>
						    <span class="glyphicon glyphicon-comment"></span><span class="evaluateNum">6</span>
					    </div>
				    </div>
				    <div class="story-list">
					    <img class="storypPhoto" id="storypPhoto" src="img/story4.jpg">
					    <div class="story-detil">
						    <span class="storyaddress" id="storyaddress">伦敦</span>
						    <span class="storyitd" id="storyitd">住在大厨家里是怎样的体验？早餐美到舍不得吃！</span>
					    </div>
					    <div class="story-evaluate">
						    <img class="userphoto" id="userphoto" src="img/user01.jpg">
						    <span class="glyphicon glyphicon-heart"></span><span class="zanNum">26</span>
						    <span class="glyphicon glyphicon-comment"></span><span class="evaluateNum">6</span>
					    </div>
				    </div>
				    <div class="story-list">
					    <img class="storypPhoto" id="storypPhoto" src="img/story4.jpg">
					    <div class="story-detil">
						    <span class="storyaddress" id="storyaddress">伦敦</span>
						    <span class="storyitd" id="storyitd">住在大厨家里是怎样的体验？早餐美到舍不得吃！</span>
					    </div>
					    <div class="story-evaluate">
						    <img class="userphoto" id="userphoto" src="img/user01.jpg">
						    <span class="glyphicon glyphicon-heart"></span><span class="zanNum">26</span>
						    <span class="glyphicon glyphicon-comment"></span><span class="evaluateNum">6</span>
					    </div>
				    </div>
				    <div class="story-list">
					    <img class="storypPhoto" id="storypPhoto" src="img/story4.jpg">
					    <div class="story-detil">
						    <span class="storyaddress" id="storyaddress">伦敦</span>
						    <span class="storyitd" id="storyitd">住在大厨家里是怎样的体验？早餐美到舍不得吃！</span>
					    </div>
					    <div class="story-evaluate">
						    <img class="userphoto" id="userphoto" src="img/user01.jpg">
						    <span class="glyphicon glyphicon-heart"></span><span class="zanNum">26</span>
						    <span class="glyphicon glyphicon-comment"></span><span class="evaluateNum">6</span>
					    </div>
				    </div>
				    <div class="story-list">
					    <img class="storypPhoto" id="storypPhoto" src="img/story4.jpg">
					    <div class="story-detil">
						    <span class="storyaddress" id="storyaddress">伦敦</span>
						    <span class="storyitd" id="storyitd">住在大厨家里是怎样的体验？早餐美到舍不得吃！</span>
					    </div>
					    <div class="story-evaluate">
						    <img class="userphoto" id="userphoto" src="img/user01.jpg">
						    <span class="glyphicon glyphicon-heart"></span><span class="zanNum">26</span>
						    <span class="glyphicon glyphicon-comment"></span><span class="evaluateNum">6</span>
					    </div>
				    </div>
				    <div class="story-list">
					    <img class="storypPhoto" id="storypPhoto" src="img/story4.jpg">
					    <div class="story-detil">
						    <span class="storyaddress" id="storyaddress">伦敦</span>
						    <span class="storyitd" id="storyitd">住在大厨家里是怎样的体验？早餐美到舍不得吃！</span>
					    </div>
					    <div class="story-evaluate">
						    <img class="userphoto" id="userphoto" src="img/user01.jpg">
						    <span class="glyphicon glyphicon-heart"></span><span class="zanNum">26</span>
						    <span class="glyphicon glyphicon-comment"></span><span class="evaluateNum">6</span>
					    </div>
				    </div>
				    <div class="story-list">
					    <img class="storypPhoto" id="storypPhoto" src="img/story4.jpg">
					    <div class="story-detil">
						    <span class="storyaddress" id="storyaddress">伦敦</span>
						    <span class="storyitd" id="storyitd">住在大厨家里是怎样的体验？早餐美到舍不得吃！</span>
					    </div>
					    <div class="story-evaluate">
						    <img class="userphoto" id="userphoto" src="img/user01.jpg">
						    <span class="glyphicon glyphicon-heart"></span><span class="zanNum">26</span>
						    <span class="glyphicon glyphicon-comment"></span><span class="evaluateNum">6</span>
					    </div>
				    </div>
				    <div class="story-list">
					    <img class="storypPhoto" id="storypPhoto" src="img/story4.jpg">
					    <div class="story-detil">
						    <span class="storyaddress" id="storyaddress">伦敦</span>
						    <span class="storyitd" id="storyitd">住在大厨家里是怎样的体验？早餐美到舍不得吃！</span>
					    </div>
					    <div class="story-evaluate">
						    <img class="userphoto" id="userphoto" src="img/user01.jpg">
						    <span class="glyphicon glyphicon-heart"></span><span class="zanNum">26</span>
						    <span class="glyphicon glyphicon-comment"></span><span class="evaluateNum">6</span>
					    </div>
				    </div>
				    <div class="story-list">
					    <img class="storypPhoto" id="storypPhoto" src="img/story4.jpg">
					    <div class="story-detil">
						    <span class="storyaddress" id="storyaddress">伦敦</span>
						    <span class="storyitd" id="storyitd">住在大厨家里是怎样的体验？早餐美到舍不得吃！</span>
					    </div>
					    <div class="story-evaluate">
						    <img class="userphoto" id="userphoto" src="img/user01.jpg">
						    <span class="glyphicon glyphicon-heart"></span><span class="zanNum">26</span>
						    <span class="glyphicon glyphicon-comment"></span><span class="evaluateNum">6</span>
					    </div>
				    </div>
				    <div class="story-list">
					    <img class="storypPhoto" id="storypPhoto" src="img/story4.jpg">
					    <div class="story-detil">
						    <span class="storyaddress" id="storyaddress">伦敦</span>
						    <span class="storyitd" id="storyitd">住在大厨家里是怎样的体验？早餐美到舍不得吃！</span>
					    </div>
					    <div class="story-evaluate">
						    <img class="userphoto" id="userphoto" src="img/user01.jpg">
						    <span class="glyphicon glyphicon-heart"></span><span class="zanNum">26</span>
						    <span class="glyphicon glyphicon-comment"></span><span class="evaluateNum">6</span>
					    </div>
				    </div>
			    </div>
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
