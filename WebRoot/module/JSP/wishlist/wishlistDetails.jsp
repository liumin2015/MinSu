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
		<title>心愿单</title>

		<link rel="stylesheet" type="text/css" href="module/css/reset.css">	  
		<link rel="stylesheet" type="text/css" href="module/css/public.css">
		
		<link rel="stylesheet" type="text/css" href="module/css/wishlist/wishListDetail.css"> 
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
		<div class="wishName">醉美大理</div>
		<span class="wishNumtitle"><span class="creatTime">没有日期</span>*<span class="houseNum">2</span>个房源</span>
		<div class="houseShow">
		        <div class="houseslist ">
			        <div class="likeico">
						<div class="heart " id="like1" rel="like"></div>
						<!-- <div class="likeCount" id="likeCount1">1</div> -->
			        </div>
					<img id="houses-photo" class="houses-photo" src="img/house1.jpg">
					<div class="houses-detil">
						<span class="price" id="price">￥1200</span>
						<span class="houseads" id="houseads">大理</span>--
						<span class="housetype" id="housetype">整套房子/公寓</span>
						<img class="houseHowner" src="img/user01.jpg"></img>
				    </div>
				    <div class="houses-evaluate">
						<span class="star"></span>
						<span class="evaluateNum">130条评价</span>
					</div>
				</div>
				<div class="houseslist ">
			        <div class="likeico">
						<div class="heart " id="like1" rel="like"></div>
						<!-- <div class="likeCount" id="likeCount1">1</div> -->
			        </div>
					<img id="houses-photo" class="houses-photo" src="img/house2.jpg">
					<div class="houses-detil">
						<span class="price" id="price">￥1200</span>
						<span class="houseads" id="houseads">大理</span>--
						<span class="housetype" id="housetype">整套房子/公寓</span>
						<img class="houseHowner" src="img/user01.jpg"></img>
				    </div>
				    <div class="houses-evaluate">
						<span class="star"></span>
						<span class="evaluateNum">130条评价</span>
					</div>
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
