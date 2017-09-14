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
		
		<link rel="stylesheet" type="text/css" href="module/css/reset.css">
		<link rel="stylesheet" type="text/css" href="module/css/public.css">
		<link rel="stylesheet" type="text/css" href="module/css/house/houseMore.css">
		
		<link rel="stylesheet" type="text/css" href="module/css/normalize.css" />
	    <link rel="stylesheet" type="text/css" href="module/css/default2.css">
	    <link rel="stylesheet" type="text/css" href="module/css/style.css"/>
		
	
	    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>  
	    <script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
	    <script type="text/javascript" src="module/js/star-rating.js" ></script>
	</head>
	<body>
	<div class="warpper">
		<div class="header-top">
			<a class="logo" href="#"></a>
			<div class="houseplaceSearchbox">
			<input class="houseplaceSearch" type="" name="" placeholder="房源位置">
			<span class="searchico glyphicon glyphicon-search"></span>
			</div>
			<ul class="nav">
				<a href="#"><li>成为房东</li></a>
				<a href="#"><li>故事</li></a>
				<a id="travel" href="#"><li >旅程</li></a>
				<a id="mail" href="#"><li >收件箱</li></a>
				<a id="userImg" href="#"><img class="userImg" src="img/user01.jpg"></a>
			</ul>
		</div>
		<hr/>
		<div class="houseSearch">
			<button class="peopleNum" type="" name="">人数<span class="glyphicon glyphicon-chevron-down"></span></button>
			<button class="minMoney" type="" name="">最低价格<span class="glyphicon glyphicon-chevron-down"></span></button>
			<button class="maxMoney" type="" name="">最高价格<span class="glyphicon glyphicon-chevron-down"></span></button>
			<button class="starTime" type="" name="">入住时间<span class="glyphicon glyphicon-chevron-down"></span></button>
			<button class="endTime" type="" name="">退房时间<span class="glyphicon glyphicon-chevron-down"></span></button>
			<button class="houseType" type="" name="">房源类型<span class="glyphicon glyphicon-chevron-down"></span></button>
		</div>
		<div class="houseMain">
			<div class="houseShow">
			    <div class="houseslist ">
			        <div class="likeico">
						<div class="heart " id="like1" rel="like"></div>
						<!-- <div class="likeCount" id="likeCount1">1</div> -->
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
				</div>
				<div class="houseslist">
					<img id="houses-photo" class="houses-photo" src="img/house2.jpg">
					<div class="houses-detil">
				        <span class="price" id="price">￥1200</span>
						<span class="houseads" id="houseads">巴黎</span>--
						<span class="housetype" id="housetype">整套房子/公寓</span>
						</div>
					<div class="houses-evaluate">
						<span class="star"></span>
						<span class="evaluateNum">130条评价</span>
					</div>
				</div>
				<div class="houseslist">
					<img id="houses-photo" class="houses-photo" src="img/house3.jpg">
					<div class="houses-detil">
						<span class="price" id="price">￥1200</span>
						<span class="houseads" id="houseads">巴黎</span>--
						<span class="housetype" id="housetype">整套房子/公寓</span>
					</div>
					<div class="houses-evaluate">
						<span class="star"></span>
						<span class="evaluateNum">130条评价</span>
					</div>
					</div>
				<div class="houseslist">
					<img id="houses-photo" class="houses-photo" src="img/house4.jpg">
					<div class="houses-detil">
						<span class="price" id="price">￥1200</span>
					    <span class="houseads" id="houseads">巴黎</span>--
						<span class="housetype" id="housetype">整套房子/公寓</span>
						</div>
					<div class="houses-evaluate">
						<span class="star"></span>
						<span class="evaluateNum">130条评价</span>
					</div>
				</div>
				<div class="houseslist">
					<img id="houses-photo" class="houses-photo" src="img/house5.jpg">
					<div class="houses-detil">
						<span class="price" id="price">￥1200</span>
						<span class="houseads" id="houseads">巴黎</span>--
						<span class="housetype" id="housetype">整套房子/公寓</span>
					</div>
					<div class="houses-evaluate">
						<span class="star"></span>
						<span class="evaluateNum">130条评价</span>
					</div>
				</div>
				<div class="houseslist">
					<img id="houses-photo" class="houses-photo" src="img/house6.jpg">
					<div class="houses-detil">
						<span class="price" id="price">￥1200</span>
						<span class="houseads" id="houseads">巴黎</span>--
						<span class="housetype" id="housetype">整套房子/公寓</span>
					</div>
					<div class="houses-evaluate">
						<span class="star"></span>
						<span class="evaluateNum">130条评价</span>
					</div>
				</div>
			</div>
			<div class="mapContainer"></div>
		</div>
	</div>
	</body>
</html>
