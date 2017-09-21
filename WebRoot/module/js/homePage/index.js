$(function(){
	
	var loginuserImg = $(".userPhotoURL").val();
/*	alert(loginuserImg);*/
	if(loginuserImg!="null"&&loginuserImg!=""&&loginuserImg!="undefined"){
		$('.nav').html("<li class='dropdown'>"+
				    "<a href='#' class='dropdown-toggle' data-toggle='dropdown'>成为房东"+
					"<b class='caret'></b> </a>"+
				    "<ul class='dropdown-menu'>"+
					"<li><a href='module/JSP/house/housePush.jsp'>发布房源</a></li>"+
					"<li><a href='module/JSP/story/storyPush.jsp'>发布故事</a></li></ul></li>"+		        
					"<li id='story'><a href='module/JSP/story/storyMore.jsp'>故事</a></li>"+	
					"<li id='travel'><a href='module/JSP/travel/travel.jsp'>旅程</a></li>"+
					"<li id='mail'><a href='module/JSP/wishlist/wishList.jsp'>心愿单</a></li>"+
		            "<li><a id='userImg' href='#'><img class='userImg' src='img/"+loginuserImg+"'></a></li>"
		)}
	$('#login').click(function(){
			$('#loginbox').modal('show');
	});
	
	$('#register').click(function(){
		$('#registbox').modal('show');
	});
	
	$('.banner-btn').click(function(){
		$('#registbox').modal('show');
	});	
});

//登陆
function login() {
	var loginName = $('#userName1').val();
	var password = $('#password1').val();

	if (loginName == null || loginName == '') {
		errortips(new Array('username'));
	}
	if (password == null || password == '') {
		errortips(new Array('password'));
	} else {
		$.ajax({
			url : 'userController/userLogin.do',
			type : 'post',
			data : {
				loginName : loginName,
				password : password
			},
			success : function(result) {
				result = JSON.parse(result);
				console.log('登录连接数据库成功');
				
				if (result.type == "1") {						
					location.reload(true);
					//$('#loginbox').modal('hide');
					var loginuserPhoto = result.img;
					if ($('#rememberMe').attr('checked')) {
						setCookie("userImg",loginuserPhoto,10);
					 }else{
					setCookie("userImg",loginuserPhoto);
					 }
					/*console.log(loginuserPhoto);*/					
				} else if (result == "-1" ) {
					alert('账号不存在');
					errortips(new Array('username', 'password'));
				} else if (result == "-2" ) {
					alert('密码错误');
					errortips(new Array('username', 'password'));
				}
			},
			error : function() {
				alert('连接后台失败！');

			}
		});

	}
}

/*if ($('#rememberMe').attr('checked')) {
	setCookie("userImg",loginuserPhoto,10);
 }else{*/


//验证注册账户
function verifyClientNo(){
	var parame = {};
	parame.username = encodeURI($('#userName2').val());
	$.ajax({
		  url:'userController/verifyClientNo.do',
		  data:parame,
		  type : 'POST',// 提交方式
		  dataType : 'json',// 返回数据的类型
		  success:function(o){
			    verify = o;
				if(verify == "false"){
					$("#clientNoPrompt").html("*该账户已经被使用！");
					verify = "false";
				}
				else
					verify ="true";
		  }
		});
}

function upperCase(){
	var username = $("#userName2").val();
	if(username== ""){
		$("#clientNoPrompt").html("*账户不能为空");
		return false;
	}
	else if(username.length < 6){
		$("#clientNoPrompt").html("*账户至少为6位");
		return false;
	}
	verifyClientNo();
	if(verify == "false"){
		return false;
	}
	return true;
}

//验证注册密码
function passwordCase(){
	var password = $("#password2").val();
	if(password.length < 6){
		$("#passwordPrompt").html("*密码长度至少为6位");
		return false;
	}
	return true;
}
//验证手机号码
function fixedCase(){
	
	var fixedTelephone = $("#phoneNumber").val();
//	var ab=/^([0-9]{11})?$/; 
	var ab=/^(13|15|18)\d{9}$/i;
	if(fixedTelephone == ""){
		$("#fixedPrompt").html("*电话号码不能为空");	
		return false;
	}
	else if(!ab.test(fixedTelephone)){
		$("#fixedPrompt").html("*电话号码格式不正确");
		return false;
	}
	return true;
}

//注册
function register(){
	if(upperCase()&&passwordCase()&&fixedCase()){
		var parame = {};
		parame.userName = encodeURI($('#userName2').val());
		parame.password = encodeURI($('#password2').val());
		parame.phoneNumber = encodeURI($('#phoneNumber').val());
		parame.email = encodeURI($('#email').val());
		parame.introduce = encodeURI($('#introduce').val());
		parame.sex = encodeURI($("input[type='radio']:checked").val());
		parame.age = encodeURI($('#age').val());
		
		$.ajax({
		  url:'userController/addPerson.do',
		  data:parame,
		  success:function(o){
				  alert("注册成功,请登录");
				  $('#registbox').modal('hide');
		  }
		});
    }
		else{
			alert("注册未能成功,请检查表单填写！");
			return;
		}
}


//写cookies  
function setCookie(c_name, value, expiredays){  
 　　　　var exdate=new Date();  
　　　　exdate.setDate(exdate.getDate() + expiredays);  
　　　　document.cookie=c_name+ "=" + escape(value) + ((expiredays==null) ? "" : ";expires="+exdate.toGMTString());  
 　　}  
   
//读取cookies  
function getCookie(name)  
{  
    var arr,reg=new RegExp("(^| )"+name+"=([^;]*)(;|$)");  
   
    if(arr=document.cookie.match(reg))  
   
        return (arr[2]);  
    else  
        return null;  
}  
  
//删除cookies  
function delCookie(name)  
{  
    var exp = new Date();  
    exp.setTime(exp.getTime() - 1);  
    var cval=getCookie(name);  
    if(cval!=null)  
        document.cookie= name + "="+cval+";expires="+exp.toGMTString();  
} 
