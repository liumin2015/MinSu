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
		<link rel="stylesheet" type="text/css" href="module/css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="module/css/default2.css">
		<link rel="stylesheet" type="text/css" href="module/css/style.css"/>
		
		<link rel="stylesheet" type="text/css" href="module/css/story/storyDetail.css">
	
	    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>  
	    <script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script> 
	    <script src="module/js/star-rating.js" type="text/javascript"></script>
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
		<div class="warpper2">
			<div class="storyIdu">
				<div class="storyuser">
					<img class="userphoto" src="img/user01.jpg">
					<lable>
						<span class="username">Sisi</span>
						<span class="address">台南</span>
						<span class="day">今天</span>
					</lable>
				</div>
				<div class="storyDet">
					<span class="glyphicon glyphicon-flag"></span><span>举报</span>
					<span class="glyphicon glyphicon-thumbs-up"></span><span>7</span>
					<span class="glyphicon glyphicon-comment"></span><span>1</span>
				</div>
			</div>
			<div class="storyImgcontainer">
				<img class="storyImgs" src="img/storydet1.jpg">
				<img class="storyImgs" src="img/storydet2.jpg">
				<img class="storyImgs" src="img/storydet3.jpg">
			</div>
			<div class="location">
				<img class="location-ico" src="img/location-ico.jpg">
				<span>大雁山</span>
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
						<span class="star"></span>
						<span class="evaluateNum">130条评价</span>
					</div>
					<div class="likeico">
						<div class="heart " id="like1" rel="like"></div>
						<div class="likeCount" id="likeCount1">1</div>
			        </div>
			    </div>    
		    </div>
		    <div class="evaluate">
			    <h3 class="evaluateTitle">有什么感想</h3>
			    <input class="myevaluate" type="" name="" placeholder="说点什么、、、">
			    <img class="evaluateuserImg" src="img/user01.jpg" />
		    </div>
	</div>
	</body>
</html>
