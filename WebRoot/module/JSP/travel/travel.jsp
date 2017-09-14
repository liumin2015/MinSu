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
		<title>旅行</title>

		<link rel="stylesheet" type="text/css" href="module/css/reset.css">	  
		<link rel="stylesheet" type="text/css" href="module/css/public.css">
		
		<link rel="stylesheet" type="text/css" href="module/css/travel/travel.css"> 
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
		<h2 class="travel">即将启程的旅行</h2>
		<div class="travelbox">
		<div class="travellist">
			<img class="travelimg" src="img/house2.jpg">
			<img class="OwnerPhoto" src="img/user01.jpg">
			<div class="travelInd">
				<div class="location">大理</div>
				<div class="Time">
				<span class="starTime">2016年3月23</span>-<span class="endTime">2016年3月26</span></div>
				<div class="houseName">理想国，人文空间</div>
				<button class="unsubscribe">取消预定</button>
			</div>
		</div>
		<div class="travellist">
			<img class="travelimg" src="img/house2.jpg">
			<img class="OwnerPhoto" src="img/user01.jpg">
			<div class="travelInd">
				<div class="location">大理</div>
				<div class="Time">
				<span class="starTime">2016年3月23</span>-<span class="endTime">2016年3月26</span></div>
				<div class="houseName">理想国，人文空间</div>
				<button class="unsubscribe">取消预定</button>
			</div>
		</div>
		<div class="travellist">
			<img class="travelimg" src="img/house2.jpg">
			<img class="OwnerPhoto" src="img/user01.jpg">
			<div class="travelInd">
				<div class="location">大理</div>
				<div class="Time">
				<span class="starTime">2016年3月23</span>-<span class="endTime">2016年3月26</span></div>
				<div class="houseName">理想国，人文空间</div>
				<button class="unsubscribe">取消预定</button>
			</div>
		</div>
		<div class="travellist">
			<img class="travelimg" src="img/house2.jpg">
			<img class="OwnerPhoto" src="img/user01.jpg">
			<div class="travelInd">
				<div class="location">大理</div>
				<div class="Time">
				<span class="starTime">2016年3月23</span>-<span class="endTime">2016年3月26</span></div>
				<div class="houseName">理想国，人文空间</div>
				<button class="unsubscribe">取消预定</button>
			</div>
		</div>
		</div>
		<h2 class="traveled">过去的旅行</h2>
		<div class="travelbox">
		<div class="travellist">
			<img class="travelimg" src="img/house2.jpg">
			<img class="OwnerPhoto" src="img/user01.jpg">
			<div class="travelInd">
				<div class="location">大理</div>
				<div class="Time">
				<span class="starTime">2016年3月23</span>-<span class="endTime">2016年3月26</span></div>
				<div class="houseName">理想国，人文空间</div>
				<button class="unsubscribe">再次预定</button>
			</div>
		</div>
		<div class="travellist">
			<img class="travelimg" src="img/house2.jpg">
			<img class="OwnerPhoto" src="img/user01.jpg">
			<div class="travelInd">
				<div class="location">大理</div>
				<div class="Time">
				<span class="starTime">2016年3月23</span>-<span class="endTime">2016年3月26</span></div>
				<div class="houseName">理想国，人文空间</div>
				<button class="unsubscribe">再次预定</button>
			</div>
		</div>
		<div class="travellist">
			<img class="travelimg" src="img/house2.jpg">
			<img class="OwnerPhoto" src="img/user01.jpg">
			<div class="travelInd">
				<div class="location">大理</div>
				<div class="Time">
				<span class="starTime">2016年3月23</span>-<span class="endTime">2016年3月26</span></div>
				<div class="houseName">理想国，人文空间</div>
				<button class="unsubscribe">再次预定</button>
			</div>
		</div>
		<div class="travellist">
			<img class="travelimg" src="img/house2.jpg">
			<img class="OwnerPhoto" src="img/user01.jpg">
			<div class="travelInd">
				<div class="location">大理</div>
				<div class="Time">
				<span class="starTime">2016年3月23</span>-<span class="endTime">2016年3月26</span></div>
				<div class="houseName">理想国，人文空间</div>
				<button class="unsubscribe">再次预定</button>
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
