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
		<link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="module/css/bootstrap-datetimepicker.min.css">
		
		<link rel="stylesheet" type="text/css" href="module/css/reset.css">	  
	    <link rel="stylesheet" type="text/css" href="module/css/public.css">
	    <link rel="stylesheet" type="text/css" href="module/css/star-rating-svg.css">
		<link rel="stylesheet" type="text/css" href="module/css/house/houseDetail.css">		
	
	    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>  
	    <script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script> 
	    <script src="module/js/bootstrap-datetimepicker.js" type="text/javascript"></script>
        <script src="module/js/bootstrap-datetimepicker.zh-CN.js" type="text/javascript"></script>
	    <script src="module/js/jquery.star-rating-svg.js" type="text/javascript"></script> 
	    
	    <script type="text/javascript" src="module/js/homePage/index.js"></script>
	    <script type="text/javascript" src="module/js/house/houseDetail.js" ></script>
	    <script type="text/javascript" src="module/js/house/evaluate.js" ></script>
	    <script type="text/javascript" src="module/js/wishlist/houseDetailwish.js" ></script>
	    
	    <script type="text/javascript">  
	    $(function(){
	    	 $('#startbookTime').datetimepicker({  
	    	 	format: 'yyyy-mm-dd',  
	            language: 'zh-CN',  
	            pickTime: false ,
	            minView: 2 
	        }).on('changeDate',function(){  
	        	$(this).datetimepicker('hide');  
	        });  
	         $('#endbookTime').datetimepicker({  
	    	 	format: 'yyyy-mm-dd',  
	            language: 'zh-CN',  
	            pickTime: false  ,
	            minView: 2
	        }).on('changeDate',function(){  
	        	$(this).datetimepicker('hide');  
	        });
	        
	        
	    $(".all").click(function() {
	        $("html, body").animate({
	        scrollTop: $("#mainBox").offset().top }, {duration: 500,easing: "swing"});
            return false;
        });
        
        $(".evaluate").click(function() {
	        $("html, body").animate({
	        scrollTop: $("#articleComment").offset().top }, {duration: 500,easing: "swing"});
            return false;
        });
        
         $(".owner").click(function() {
	        $("html, body").animate({
	        scrollTop: $("#houseOwnerBox").offset().top }, {duration: 500,easing: "swing"});
            return false;
        });
         $(".location").click(function() {
	        $("html, body").animate({
	        scrollTop: $("#address").offset().top }, {duration: 500,easing: "swing"});
            return false;
        });
        
	});
	    
	    
     
    </script>
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
			      <!--   <div class="item active">
			            <img style="height: 320px;" src="img/house1.jpg" alt="First slide">
			        </div>
			        <div class="item">
			            <img style="height: 320px;" src="img/house2.jpg" alt="Second slide">
			        </div>
			        <div class="item">
			            <img style="height: 320px;" src="img/house3.jpg" alt="Third slide">
			        </div> -->
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
					<li class="all">综述</li>
					<li class="evaluate">评价</li>
					<li class="owner">房东</li>
					<li class="location">位置</li>
				</ul>
				<div class="mainBox" id="mainBox">
					<div class="houseOwner">
						<div class="houseOwnerLeft">
							<h1 class="houseName"></h1>
							<span class="hosueLocation"></span>
							<div class="Tndbox">
							<span class="star my-rating"></span>
							<span ><span class="houseEvluateNum"></span>条评价</span>
							</div>
						</div>
						<img class="houseOwnerImg" src="">
					</div>
					<div class="houseEvluate" id="houseEvluate">
						<div>
							<img src="img/singleRoom.png">
							<p class="houseType"></p>
						</div>
						<div>
						    <img src="img/peopleNum.png">
							<p class="peopleNum"><span></span>位房客</p>
						</div>
						<div >
						    <img src="img/singlebedroom.png">
							<p class="roomType"><span></span>间卧室</p>
						</div>
						<div >
						    <img src="img/singlebed.png">
							<p class="bedNum"><span></span>张床</p>
						</div>
					</div>
					<div class="houseIntroduce">
					<p class="houseIntroduceDec">地理位置优越,现代,房间宽敞,很方便到达东京最好的那些地方。当你使用我们精心设计的房子座位你在东京冒险之旅的房间时,你将感受到日本特有的好客(无微不至)!房源房屋信息 与东京同等价位的住宿相比,我们的更加现代化,内部精心设计。花费了三年时间苦心翻修和重新设计。这是充满爱意的劳动,但是结果非常值得。对Airbnn我们的布局非常完美,客人会有很多隐私空间。</p><a class="learnmore">查看更多</a>
					<a class="contact">联系房东</a>
					</div>
					<div class="aboutHouse">
					<h3>房源</h3>
					<ul>
						<li class="peopleNum1" >可住：<span class="peopleNum"></span></li>
						<li class="checkoutTime" >退房时间：<span id="checkoutTime">10:00</span></li>
						<li class="totleNum1" >卫生间：<span class="totleNum"></span></li>
						<li class="houseType1" >房源类型：<span class="houseType"></span></li>
						<!-- <li class="bedroom" >卧室：<span class="bedroom"></span></li> -->
						<li class="bedroomType1" >房间类型：<span class="roomType"></span></li>
						<li class="bedNum1" >床铺：<span class="bedNum"></span></li>
						<li class="CheckType" >入住类型：<span id="CheckType">自助入住</span></li>
						<li class="checkTime" >入住时间：<span id="checkTime">12:00</span></li>
					</ul>
					<a class="houseRules">《房屋守则》</a>
					</div>
					<div id="articleComment">
						<ul class="evaluatelist">
						<!-- <li><img class="commentuserphpto" src="img/user01.jpg">
						<div class="commentcontent"></div>
						</li> -->
					
						</ul>
					</div>
					<div class="houseOwnerBox" id="houseOwnerBox">
						<img class="userPhotoShow" src="img/user01.jpg">
						<span>房东：<span class="userNameHtml">理想国</span></span>
						<p class="houseOwnerDetail">Born & raised in Texas but based in Tokyo now. Run airbnb with my Japanese businesss partner, Kenji. Mature, respectful professionals who work hard but know how to enjoy life. With our Southern/Texas & Japanese backgrounds, hospitality comes quite naturally to us. I studied abroad in Bangkok, Thailand and Paris, France and Kenji studied abroad in NYC during our university days so definitely have a global perspective on things.

	                     Interested in traveling, photography, skin care, cooking, home renovation & interior design. Spent about 3 years designing and renovating the house. Our design aesthetic is clean, modern and uncluttered; a bit Japanesey with a mid-century modern flair. Although we are done with most of our interior design projects, we are continuously looking for ways to improve the comfort and design of our space. 
	                    </p>
					</div>
				</div>
			</div>
		</div>
		<div class="bookHouse">
			<div class="bookBox">
				<p class="booktittle">最低￥<span class="housepriceHtml">521</span>每晚</p>
				<div role="form">
					<div class="form-group">
						<div class="col-xs-6">
							<label for="startTime">入住</label>
							<input type="text" class="form-control" id="startbookTime" placeholder="年-月-日">
							</div>
						<div class="col-xs-6">
							<label for="endTime">退房</label>
							<input type="text" class="form-control" id="endbookTime" placeholder="年-月-日">
						</div>
						<div class="col-xs-12">
							<label for="peopleNum">房客</label>
							<input type="text" class="form-control" id="bookpeopleNum" placeholder="房客人数">
						</div>
					</div>
					<button class="btn btn-default" class="book" onclick="bookhouseInval()">预定</button>
				</div>
				<hr/>
				<div class="say">这个房源是很多人的心仪之所。过去一周浏览量超过521次</div>
				<div class="wishhouse"><button class="wishhousebtn">点击加入心愿单</button></div>
			</div>
		</div>
		<div class="address" id="address">详细地址：<span class="addressHtml"></span></div>
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
    
    
    <!-- 预订详情框 -->
    <div id="bookhousebox" class="modal fade" >
	    <div class="modal-dialog" role="document">  
		    <div class="modal-content"> 
		        <div class="modal-header">
		            <a class="close" data-dismiss="modal">×</a>
		            <h3>预订详情：</h3>
		        </div>
		        <div class="modal-body">
		        <ul class="bookmain">
		        <li>预订人：<span class="bhuserName"></span></li>
		        <li>预订房源名称：<span class="bhhouseName"></span></li>
		        <li>预订入住时间：<span class="bhstarTime"></span></li>
		        <li>预订退房时间：<span class="bhendTime"></span></li>
		        <li>入住人数：<span class="bhpeopleNum"></span></li>
		        <li>预订单价：￥<span class="bhprice"></span>/天</li>
		        <li>需要支付金额：￥<span class="bhtotalprice"></span></li>
		        </ul>
		        <button id="bookhousebtn" class="loginbtn">付款</button>
		        </div>
		    </div>
	    </div>
    </div>
    
    <!-- 加入心愿单框 -->
    <div id="wishlistbox" class="modal fade" >
	    <div class="modal-dialog" role="document">  
		    <div class="modal-content"> 
		        <div class="modal-header">
		            <a class="close" data-dismiss="modal">×</a>
		            <h3>加入心愿单：</h3>
		        </div>
		        <div class="modal-body">
		        <div role="form">
		            <div class="form-group">
			            <label for="wishName"></label>
			            <input type="text" class="form-control" id="wishName" placeholder="请填写接入心愿单名称">
		            </div>
		        </div>
		        <button id="addwishbtn" class="loginbtn" onclick="addwish()">加入</button>
		        </div>
		    </div>
	    </div>
    </div>
    
	</body>
</html>
