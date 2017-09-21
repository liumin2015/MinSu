$(function(){
	var userID = $(".loginIDURL").val();
	if(userID == "null"||userID==""||userID == "undefined"||userID == null){
		alert("请先登陆")
	}else{
		
		showTravel(userID);
		
	}
});

//展示订单信息
function showTravel(userID){
	var parame = {};
	parame.storyID = userID;
	parame.orderID = "";
	$.ajax({
		data : parame,
		url : 'ordersController/getOrder.do',
		type : 'post',
		success : function(data) {
			data = JSON.parse(data);					
			if (data) {
				console.log(data);
				var payTravelList ="";
				var traverList = "";
				var pastTravelList = "";
				for(var i = 0;i<data.rows.length;i++){
					
				
					
					var startTime = changeTime(data.rows[i].bookstaTime);
					
					var endTime = changeTime(data.rows[i].bookendTime);
					
					if(data.rows[i].orderstate=="1"){
						
						payTravelList += "<div class='travellist'>"+
				        "<img class='travelimg' src='img/"+data.rows[i].houseimg+"'>"+
				        "<img class='OwnerPhoto' src='img/"+data.rows[i].userimg+"'>"+
				        "<div class='travelInd'>"+
					    "<div class='location'>"+data.rows[i].houseads+"</div>"+
					    "<div class='Time'>"+
					    "<span class='starTime'>"+startTime+"</span>到<span class='endTime'>"+endTime+"</span></div>"+
					    "<div class='houseName'>"+data.rows[i].houseName+"</div>"+
					    "<button class='unsubscribe' id='payOrder' onclick='payorder(this)' value='"+data.rows[i].ordersid+"'>去付款</button></div></div>";
						$("#paytravel").html(payTravelList);
						
						
					}else if(data.rows[i].orderstate=="2"){
						
						traverList += "<div class='travellist'>"+
				        "<img class='travelimg' src='img/"+data.rows[i].houseimg+"'>"+
				        "<img class='OwnerPhoto' src='img/"+data.rows[i].userimg+"'>"+
				        "<div class='travelInd'>"+
					    "<div class='location'>"+data.rows[i].houseads+"</div>"+
					    "<div class='Time'>"+
					    "<span class='starTime'>"+startTime+"</span>到<span class='endTime'>"+endTime+"</span></div>"+
					    "<div class='houseName'>"+data.rows[i].houseName+"</div>"+
					    "<button class='unsubscribe' onclick='dateleorder(this)' value='"+data.rows[i].ordersid+"'>取消预定</button></div></div>";
						$("#nowtravel").html(traverList);
						
						
					}else if(data.rows[i].orderstate=="3"){
						pastTravelList += "<div class='travellist'>"+
				        "<img class='travelimg' src='img/"+data.rows[i].houseimg+"'>"+
				        "<img class='OwnerPhoto' src='img/"+data.rows[i].userimg+"'>"+
				        "<div class='travelInd'>"+
					    "<div class='location'>"+data.rows[i].houseads+"</div>"+
					    "<div class='Time'>"+
					    "<span class='starTime'>"+startTime+"</span>到<span class='endTime'>"+endTime+"</span></div>"+
					    "<div class='houseName'>"+data.rows[i].houseName+"</div>"+
					    "<button class='unsubscribe' onclick='dateleorder(this)' value='"+data.rows[i].ordersid+"'>删除旅行</button></div></div>";	
						$("#pastTravel").html(pastTravelList);
					}
				}
			}
		}
	})
		
}

//付款
function payorder(obj){
	
	var orderID = obj.value;
	console.log(orderID);
	var parame = {};
	parame.storyID = "";
	parame.orderID = orderID;
	$.ajax({
		data : parame,
		url : 'ordersController/getOrder.do',
		type : 'post',
		success : function(data) {
			data = JSON.parse(data);					
			if (data) {
				console.log(data);
				
				pay(data.rows[0].ordersid,data.rows[0].price,data.rows[0].houseName);
				
				}
		}
	});
	
}

function pay(ordersID,price,houseName){
	var parame = {};
	parame.orderID = ordersID;
	parame.price = price;
	parame.houseName = houseName;
	$.ajax({
		data : parame,
		url : 'ordersController/pay.do',
		type : 'post',
		success : function(data) {
			data = JSON.parse(data);
			console.log(data);
			if (data.type =="1") {
				console.log(data.qrcode);
				window.location.href = "module/JSP/house/bookHouse.jsp?name="+data.name;
			}else{
				alert("付款失败");
			}
		}
	});
}


//取消订单
function dateleorder(obj){
	
	var orderID = obj.value;
	var parame = {};
	parame.orderID = orderID;
	parame.orderState = "0";
	parame.price = "";
	$.ajax({
		data : parame,
		url : 'ordersController/UpdateOrders.do',
		type : 'post',
		success : function(data) {
			data = JSON.parse(data);					
			if (data=="true") {
				alert("订单删除成功，支付款项将于三个工作日内返回到原账户");
				
				}
		}
	});
	
}

function changeTime(ObjTime){
	console.log(ObjTime.time);
	var day2 = new Date();
	day2.setTime(ObjTime.time);
	var year = day2.getFullYear();
	var month = day2.getMonth() + 1;
    var day = day2.getDate();
    
    time1 = year+"-"+ (month<10?"0"+month:month) +"-"+(day<10?"0"+day:day);
    /*console.log("typeof(housestartTime)" +time1);*/
    return time1;
}