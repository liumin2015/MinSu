
$(function(){
	
	  $('.wishhousebtn').click(function(){
	    	$('#wishlistbox').modal('show');
		});
});

function addwish(){
	
	var userID = $(".loginIDURL").val();
	var url = document.URL;
	var arrurl=url.split("?ID=");
	
	var parame = {};
	parame.houseID = arrurl[1];
	parame.userID = userID;
	parame.name = $("#wishName").val();
	
	var myDate = new Date();
	var year = myDate.getFullYear();
	var month = myDate.getMonth() + 1;
    var day = myDate.getDate();  
    today = year+"-"+ (month<10?"0"+month:month) +"-"+(day<10?"0"+day:day);
    console.log(today);
	parame.creatTime = today;
	$.ajax({
		url : 'wishListController/addWishlist.do',
		type: 'post',
		data:parame,
		success : function(result) {
			result = JSON.parse(result);
			
			if (result) {
				$('#wishlistbox').modal('hide');
				alert("加入成功");
				
			}
		}
	});
}