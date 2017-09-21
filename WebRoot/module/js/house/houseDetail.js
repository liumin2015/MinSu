var userName = "";
var houseprice = "";
var housestartTime = "";
var houseendTime = "";
var housestartTime1 = "";
var houseendTime1 = "";
var houseName = "";

$(function(){
	//获取要定位元素距离浏览器顶部的距离
	var navH = $(".bookHouse").offset().top; 
	var navH2 = $(".houseContainerNav").offset().top;
    var navH3 = $(".address").offset().top - 450;
   /* console.log("navH3"+navH3);*/
	//滚动条事件
    $(window).scroll(function(){
    	var $this=$(this)
    	//获取滚动条的滑动距离
    	var scroH = $this.scrollTop();
       /* console.log("scroH"+scroH);*/
        //滚动条的滑动距离大于等于定位元素距离浏览器顶部的距离，就固定，反之就不固定
        if(scroH>=navH&&scroH<navH3){
        	$(".bookHouse").css({"position":"fixed","top":0});
        }else if(scroH<navH) {
        	$(".bookHouse").css({"position":"absolute","top":"350px"});
        }
        if(scroH>=navH2){
        	$(".houseContainerNav").css({"position":"fixed","top":"1px","z-index":"101",});
        }else if(scroH<navH) {
        	$(".houseContainerNav").css({"position":"relative"});
        }
    });
    
    search();
  
});

/*
 * 首页读取房源信息
 */
function search() {
	var url = document.URL;
	var arrurl=url.split("?ID=");
	
	var parame = {};
	parame.houseID = arrurl[1];
	parame.location = "";
	parame.startime = "";
	parame.endtime = "";
	parame.peopleNum = "";
	$.ajax({
				data : parame,
				url : 'houseController/getHouse.do',
				type : 'post',
				success : function(data) {
					data = JSON.parse(data);					
					if (data) {
					/*	console.log(data);*/
						
						    var n= data.rows.length;
					
							var photolist ="<div class='item active'>"+
			                "<img style='height: 320px;' src='img/"+data.rows[0].name+"' alt='First slide'></div>"+
			                "<div class='item'>"+
			                "<img style='height: 320px;' src='img/"+data.rows[1].name+"' alt='Second slide'></div>"+
			                "<div class='item'>"+
			                "<img style='height: 320px;' src='img/"+data.rows[2].name+"' alt='Third slide'></div>";
					
						$(".carousel-inner").html(photolist);											
					
						$(".houseName").html(data.rows[0].houseName);
						$(".hosueLocation").html(data.rows[0].address);
						$(".houseOwnerImg").attr('src',"img/"+data.rows[0].photo+"");
						$(".my-rating").starRating({
							initialRating : data.rows[0].satisfy,
							starSize : 20,
							readOnly : true
						});
						$(".houseType").html(data.rows[0].type);
						$(".peopleNum").html(data.rows[0].peopleNum+"位房客");
						$(".roomType").html(data.rows[0].roomType);
						$(".bedNum").html(data.rows[0].bedNum+" 张床");
						$(".houseIntroduceDec").html(data.rows[0].introduce);
						$(".totleNum").html(data.rows[0].toiletNum);
						$(".houseOwnerDetail").html(data.rows[0].houseRule);
						$(".userPhotoShow").attr('src',"img/"+data.rows[0].photo+"");
						$(".userNameHtml").html(data.rows[0].userName);
						$(".housepriceHtml").html(data.rows[0].price);
						$(".addressHtml").html(data.rows[0].address);
						
						userName = data.rows[0].userName;
						housestartTime = data.rows[0].starTime;
						
						houseendTime = data.rows[0].endTime;
						houseprice = data.rows[0].price;
						houseName= data.rows[0].houseName;
				}
			}
	});
}



function bookhouseInval(){
	var bookhousestartTime = $("#startbookTime").val();
	var bookhouseendTime = $("#endbookTime").val();
	var peopleNumber = $("#bookpeopleNum").val();
	var housestartTime2 = changeTime(housestartTime);
	var houseendTime2 = changeTime(houseendTime);
	
	if(dateCompare(bookhousestartTime,housestartTime2)&&dateCompare(houseendTime2,bookhouseendTime)){
		//执行预定
		$('#bookhousebox').modal('show'); //弹出订单确认框
		var bookday = DateDiff(bookhousestartTime,bookhouseendTime);
		var total = houseprice*bookday;
		$(".bhuserName").html(userName);
		$(".bhhouseName").html(houseName);
		$(".bhstarTime").html(bookhousestartTime);
		$(".bhendTime").html(bookhouseendTime);
		$(".bhpeopleNum").html(peopleNumber);
		$(".bhprice").html(houseprice);
		$(".bhtotalprice").html(total);
		
		var myDate = new Date();
		var orderTime = changeTime(myDate);
		var userID = $(".loginIDURL").val();
		var url = document.URL;
		var arrurl=url.split("?ID=");
		
		$("#bookhousebtn").click(function(){
			
			parame.orderTime = orderTime;
			parame.houseID = arrurl[1];
			parame.endTime = bookhouseendTime;
			parame.starTime = bookhousestartTime;
			parame.price = total;
			parame.orderPriceRule = "";
			parame.orderBookRuleID ="";
			parame.userID = userID;
			//生成订单，成功后跳转二维码页面
			$.ajax({
				data : parame,
				url : 'ordersController/addOrders.do',
				type : 'post',
				success : function(data) {
					data = JSON.parse(data);					
					if (data) {
						alert("请前往旅行页选择待付款项付款");
					}
				}
			});
		})
		
	}else{
		alert("该房源从"+housestartTime2+"--"+houseendTime2+"开放预订，请选择合适时间");
	}
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

function dateCompare(startDate,endDate){  
	   var aStart=startDate.split('-'); //转成成数组，分别为年，月，日，下同  
/*	   console.log(aStart);
	   console.log(endDate.getFullYear());*/
	   
	   var aEnd=endDate.split('-');  
	   var startDateTemp = aStart[0]+"/" + aStart[1]+ "/" + aStart[2];  
	   var endDateTemp = aEnd[0] + "/" + aEnd[1] + "/" + aEnd[2];  
	   if (startDateTemp > endDateTemp)   
	    return true;  
	   else  
	    return false;  
}

function  DateDiff(sDate1,  sDate2){    //sDate1和sDate2是2006-12-18格式  
    var  aDate,  oDate1,  oDate2,  iDays  
    aDate  =  sDate1.split("-")  
    oDate1  =  new  Date(aDate[1]  +  '-'  +  aDate[2]  +  '-'  +  aDate[0])    //转换为12-18-2006格式  
    aDate  =  sDate2.split("-")  
    oDate2  =  new  Date(aDate[1]  +  '-'  +  aDate[2]  +  '-'  +  aDate[0])  
    iDays  =  parseInt(Math.abs(oDate1  -  oDate2)  /  1000  /  60  /  60  /24)    //把相差的毫秒数转换为天数  
    return  iDays  
}    

