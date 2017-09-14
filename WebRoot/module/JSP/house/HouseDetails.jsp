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
		<title>房源详情</title>
		<link rel="stylesheet" type="text/css" href="module/css/reset.css">	  
	    <link rel="stylesheet" type="text/css" href="module/css/public.css">
		<link rel="stylesheet" type="text/css" href="module/css/homePage/houseDetail.css">
		<link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
	
		<link rel="stylesheet" type="text/css" href="module/css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="module/css/default2.css">
		<link rel="stylesheet" type="text/css" href="module/css/style.css"/>
	
		<link rel="stylesheet" href="module/css/semantic.css" type="text/css" />
	    <link rel="stylesheet" href="module/css/zyComment.css" type="text/css" />
	
	    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>  
	    <script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script> 
	    <script type="text/javascript" src="module/js/star-rating.js" ></script>
	    <script type="text/javascript" src="module/js/house/houseDetail.js" ></script>
	    <script type="text/javascript" src="module/js/zyComment.js"></script>
	    <script type="text/javascript" src="module/js/comment.js"></script>
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
				<a id="mail" href="#"><li >心愿单</li></a>
				<a id="userImg" href="#"><img class="userImg" src="img/user01.jpg"></a>
			</ul>
		</div>
		<div class="houseImg">
			<div id="myCarousel" class="carousel slide">
			    <!-- 轮播（Carousel）指标 -->
			    <ol class="carousel-indicators">
			        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			        <li data-target="#myCarousel" data-slide-to="1"></li>
			        <li data-target="#myCarousel" data-slide-to="2"></li>
			    </ol>   
			    <!-- 轮播（Carousel）项目 -->
			    <div class="carousel-inner">
			        <div class="item active">
			            <img style="height: 320px;" src="img/house1.jpg" alt="First slide">
			        </div>
			        <div class="item">
			            <img style="height: 320px;" src="img/house2.jpg" alt="Second slide">
			        </div>
			        <div class="item">
			            <img style="height: 320px;" src="img/house3.jpg" alt="Third slide">
			        </div>
			    </div>
			    <!-- 轮播（Carousel）导航 -->
			    <a class="carousel-control left" href="#myCarousel" 
			        data-slide="prev">&lsaquo;
			    </a>
			    <a class="carousel-control right" href="#myCarousel" 
			        data-slide="next">&rsaquo;
			    </a>
			</div>
        </div>
		<div class="houseContainer">
			<div class="houseContainerWarpper">
				<ul class="houseContainerNav">
					<a href="#"><li class="all">综述</li></a>
					<a href="#"><li class="evaluate">评价</li></a>
					<a href="#"><li class="owner">房东</li></a>
					<a href="#"><li class="location">位置</li></a>
				</ul>
				<div class="mainBox">
					<div class="houseOwner">
						<div class="houseOwnerLeft">
							<h1 class="houseName">Urban Tokyo House</h1>
							<span class="hosueLocation">东京，日本</span>
							<span class="star"></span>
							<span ><span class="houseEvluateNum">174</span>条评价</span>
						</div>
						<img class="houseOwnerImg" src="img/user01.jpg">
					</div>
					<div class="houseEvluate">
						<div>
							<img src="img/singleRoom.png">
							<p class="houseType">独立房间</p>
						</div>
						<div>
						    <img src="img/peopleNum.png">
							<p class="peopleNum"><span>2</span>位房客</p>
						</div>
						<div >
						    <img src="img/singlebedroom.png">
							<p class="roomType"><span>一</span>间卧室</p>
						</div>
						<div >
						    <img src="img/singlebed.png">
							<p class="bedNum"><span>一</span>张床</p>
						</div>
					</div>
					<div class="houseIntroduce">
					<p class="houseIntroduceDec">地理位置优越,现代,房间宽敞,很方便到达东京最好的那些地方。当你使用我们精心设计的房子座位你在东京冒险之旅的房间时,你将感受到日本特有的好客(无微不至)!房源房屋信息 与东京同等价位的住宿相比,我们的更加现代化,内部精心设计。花费了三年时间苦心翻修和重新设计。这是充满爱意的劳动,但是结果非常值得。对Airbnn我们的布局非常完美,客人会有很多隐私空间。</p><a class="learnmore">查看更多</a>
					<a class="contact">联系房东</a>
					</div>
					<div class="aboutHouse">
					<h3>房源</h3>
					<ul>
						<li class="peopleNum" >可住：<span id="Tolive">2</span></li>
						<li class="checkoutTime" >退房时间：<span id="checkoutTime">10:00</span></li>
						<li class="totleNum" >卫生间：<span id="totleNum">1</span></li>
						<li class="houseType" >房源类型：<span id="houseType">整套房子</span></li>
						<li class="bedroom" >卧室：<span id="bedroom">1</span></li>
						<li class="bedroomType" >房间类型：<span id="bedroomType">独立房间</span></li>
						<li class="bedNum" >床铺：<span id="bedNum">1</span></li>
						<li class="CheckType" >入住类型：<span id="CheckType">自助入住</span></li>
						<li class="checkTime" >入住时间：<span id="checkTime">12:00</span></li>
					</ul>
					<a class="houseRules">《房屋守则》</a>
					</div>
					<div id="articleComment">

					</div>
					<div class="houseOwnerBox">
						<img class="userPhotoShow" src="img/user01.jpg">
						<span>房东：<span class="userName">理想国</span></span>
						<p class="houseOwnerDetail">Born & raised in Texas but based in Tokyo now. Run airbnb with my Japanese businesss partner, Kenji. Mature, respectful professionals who work hard but know how to enjoy life. With our Southern/Texas & Japanese backgrounds, hospitality comes quite naturally to us. I studied abroad in Bangkok, Thailand and Paris, France and Kenji studied abroad in NYC during our university days so definitely have a global perspective on things.

	                     Interested in traveling, photography, skin care, cooking, home renovation & interior design. Spent about 3 years designing and renovating the house. Our design aesthetic is clean, modern and uncluttered; a bit Japanesey with a mid-century modern flair. Although we are done with most of our interior design projects, we are continuously looking for ways to improve the comfort and design of our space. 
	                    </p>
					</div>
				</div>
			</div>
		</div>
		<div class="bookHouse">
			<div class="bookBox">
				<p class="booktittle">最低<span>￥521</span>每晚</p>
				<form role="form">
					<div class="form-group">
						<div class="col-xs-6">
							<label for="startTime">入住</label>
							<input type="text" class="form-control" id="startTime" placeholder="年-月-日">
							</div>
						<div class="col-xs-6">
							<label for="endTime">退房</label>
							<input type="text" class="form-control" id="startTime" placeholder="年-月-日">
						</div>
						<div class="col-xs-12">
							<label for="peopleNum">房客</label>
							<input type="text" class="form-control" id="peopleNum" placeholder="房客人数">
						</div>
					</div>
					<button type="submit" class="btn btn-default" class="book">预定</button>
				</form>
				<hr/>
				<div class="say">这个房源是很多人的心仪之所。过去一周浏览量超过521次</div>
			</div>
		</div>
		<div class="address"></div>
	</div><div class="warpper">
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
				<a id="mail" href="#"><li >心愿单</li></a>
				<a id="userImg" href="#"><img class="userImg" src="img/user01.jpg"></a>
			</ul>
		</div>
		<div class="houseImg">
			<div id="myCarousel" class="carousel slide">
			    <!-- 轮播（Carousel）指标 -->
			    <ol class="carousel-indicators">
			        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			        <li data-target="#myCarousel" data-slide-to="1"></li>
			        <li data-target="#myCarousel" data-slide-to="2"></li>
			    </ol>   
			    <!-- 轮播（Carousel）项目 -->
			    <div class="carousel-inner">
			        <div class="item active">
			            <img style="height: 320px;" src="img/house1.jpg" alt="First slide">
			        </div>
			        <div class="item">
			            <img style="height: 320px;" src="img/house2.jpg" alt="Second slide">
			        </div>
			        <div class="item">
			            <img style="height: 320px;" src="img/house3.jpg" alt="Third slide">
			        </div>
			    </div>
			    <!-- 轮播（Carousel）导航 -->
			    <a class="carousel-control left" href="#myCarousel" 
			        data-slide="prev">&lsaquo;
			    </a>
			    <a class="carousel-control right" href="#myCarousel" 
			        data-slide="next">&rsaquo;
			    </a>
			</div>
        </div>
		<div class="houseContainer">
			<div class="houseContainerWarpper">
				<ul class="houseContainerNav">
					<a href="#"><li class="all">综述</li></a>
					<a href="#"><li class="evaluate">评价</li></a>
					<a href="#"><li class="owner">房东</li></a>
					<a href="#"><li class="location">位置</li></a>
				</ul>
				<div class="mainBox">
					<div class="houseOwner">
						<div class="houseOwnerLeft">
							<h1 class="houseName">Urban Tokyo House</h1>
							<span class="hosueLocation">东京，日本</span>
							<span class="star"></span>
							<span ><span class="houseEvluateNum">174</span>条评价</span>
						</div>
						<img class="houseOwnerImg" src="img/user01.jpg">
					</div>
					<div class="houseEvluate">
						<div>
							<img src="img/singleRoom.png">
							<p class="houseType">独立房间</p>
						</div>
						<div>
						    <img src="img/peopleNum.png">
							<p class="peopleNum"><span>2</span>位房客</p>
						</div>
						<div >
						    <img src="img/singlebedroom.png">
							<p class="roomType"><span>一</span>间卧室</p>
						</div>
						<div >
						    <img src="img/singlebed.png">
							<p class="bedNum"><span>一</span>张床</p>
						</div>
					</div>
					<div class="houseIntroduce">
					<p class="houseIntroduceDec">地理位置优越,现代,房间宽敞,很方便到达东京最好的那些地方。当你使用我们精心设计的房子座位你在东京冒险之旅的房间时,你将感受到日本特有的好客(无微不至)!房源房屋信息 与东京同等价位的住宿相比,我们的更加现代化,内部精心设计。花费了三年时间苦心翻修和重新设计。这是充满爱意的劳动,但是结果非常值得。对Airbnn我们的布局非常完美,客人会有很多隐私空间。</p><a class="learnmore">查看更多</a>
					<a class="contact">联系房东</a>
					</div>
					<div class="aboutHouse">
					<h3>房源</h3>
					<ul>
						<li class="peopleNum" >可住：<span id="Tolive">2</span></li>
						<li class="checkoutTime" >退房时间：<span id="checkoutTime">10:00</span></li>
						<li class="totleNum" >卫生间：<span id="totleNum">1</span></li>
						<li class="houseType" >房源类型：<span id="houseType">整套房子</span></li>
						<li class="bedroom" >卧室：<span id="bedroom">1</span></li>
						<li class="bedroomType" >房间类型：<span id="bedroomType">独立房间</span></li>
						<li class="bedNum" >床铺：<span id="bedNum">1</span></li>
						<li class="CheckType" >入住类型：<span id="CheckType">自助入住</span></li>
						<li class="checkTime" >入住时间：<span id="checkTime">12:00</span></li>
					</ul>
					<a class="houseRules">《房屋守则》</a>
					</div>
					<div id="articleComment">

					</div>
					<div class="houseOwnerBox">
						<img class="userPhotoShow" src="img/user01.jpg">
						<span>房东：<span class="userName">理想国</span></span>
						<p class="houseOwnerDetail">Born & raised in Texas but based in Tokyo now. Run airbnb with my Japanese businesss partner, Kenji. Mature, respectful professionals who work hard but know how to enjoy life. With our Southern/Texas & Japanese backgrounds, hospitality comes quite naturally to us. I studied abroad in Bangkok, Thailand and Paris, France and Kenji studied abroad in NYC during our university days so definitely have a global perspective on things.

	                     Interested in traveling, photography, skin care, cooking, home renovation & interior design. Spent about 3 years designing and renovating the house. Our design aesthetic is clean, modern and uncluttered; a bit Japanesey with a mid-century modern flair. Although we are done with most of our interior design projects, we are continuously looking for ways to improve the comfort and design of our space. 
	                    </p>
					</div>
				</div>
			</div>
		</div>
		<div class="bookHouse">
			<div class="bookBox">
				<p class="booktittle">最低<span>￥521</span>每晚</p>
				<form role="form">
					<div class="form-group">
						<div class="col-xs-6">
							<label for="startTime">入住</label>
							<input type="text" class="form-control" id="startTime" placeholder="年-月-日">
							</div>
						<div class="col-xs-6">
							<label for="endTime">退房</label>
							<input type="text" class="form-control" id="startTime" placeholder="年-月-日">
						</div>
						<div class="col-xs-12">
							<label for="peopleNum">房客</label>
							<input type="text" class="form-control" id="peopleNum" placeholder="房客人数">
						</div>
					</div>
					<button type="submit" class="btn btn-default" class="book">预定</button>
				</form>
				<hr/>
				<div class="say">这个房源是很多人的心仪之所。过去一周浏览量超过521次</div>
			</div>
		</div>
		<div class="address"></div>
	</div>
	</body>
</html>
