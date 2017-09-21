$(function(){

	var userID = $(".loginIDURL").val();
	if(userID == "null"||userID==""||userID == "undefined"||userID == null){
		alert("请先登陆")
	}else{
		
		showDetail(userID);
	}
	
});
function showDetail(userID){
	var url = document.URL;
	var name = getUrlParam('name');
	var parame = {};
	parame.name = '"'+name+'"';
	parame.userID = userID;
	parame.wishlistID = "";
	$.ajax({
		data : parame,
		url : 'wishListController/getWishlist.do',
		type : 'post',
		success : function(data) {
			data = JSON.parse(data);
			if (data) {
			/*	console.log(data);*/
				var n= data.rows.length;
				var houseslist = "";
				$(".houseNum").html(n);
				var writeTime = changeTime(data.rows[0].wlWriteTime);
				$(".creatTime").html(writeTime);
				for (var i = 0; i < n; i++) {
					/*if(data.rows[i].name)*/
					houseslist +=  "<div class='houseslist'>"+
					"<a href='module/JSP/wishlist/wishlistDetails.jsp?ID="+data.rows[i].houseID+"'>" +
					 "<img id='houses-photo' class='houses-photo' src='img/"+data.rows[i].houseimg+"'></a>"+ 
					"<div class='houses-detil'>"+ 
					"<span class='price' id='price'>￥"+data.rows[i].houseprice+"</span>"+ 
					"<span class='houseads' id='houseads'>"+data.rows[i].houseads+"</span>"+ 
					"<span class='housetype' id='housetype'>"+data.rows[i].housetype+"</span>"+ 
					"</div>"+ 
					"<div class='houses-evaluate'>"+
					"<lable class='star my-rating"+i+"'>"+ 
					"</lable><span class='evaluateNum'>"+data.rows[i].roomType+"</span>"+ 
					"</div></div>";
					

					
					  var content = document.getElementById("houseShow");
			       	  content.innerHTML =houseslist;
				
				}
				

				for(var j=0;j<n;j++){
					$(".my-rating"+j).starRating({
						initialRating : data.rows[j].satisfy,
						starSize : 20,
						readOnly : true
					});
					
				}
		}
	}
 });
}

function getUrlParam(key){
    // 获取参数
    var url = window.location.search;
    // 正则筛选地址栏
    var reg = new RegExp("(^|&)"+ key +"=([^&]*)(&|$)");
    // 匹配目标参数
    var result = url.substr(1).match(reg);
    //返回参数值
    return result ? decodeURIComponent(result[2]) : null;
}

function changeTime(time){
	var day2 = new Date();
	day2.setTime(time.time);
	var year = day2.getFullYear();
	var month = day2.getMonth() + 1;
    var day = day2.getDate();
    
    time1 = year+"-"+ (month<10?"0"+month:month) +"-"+(day<10?"0"+day:day);
    /*console.log("typeof(housestartTime)" +time1);*/
    return time1;
}
