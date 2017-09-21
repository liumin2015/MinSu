$(function(){

	var userID = $(".loginIDURL").val();
	if(userID == "null"||userID==""||userID == "undefined"||userID == null){
		alert("请先登陆")
	}else{
		
		$(".creatWishList").click(function(){
			
			$('#wishlistbox').modal('show');
		});
		
		showwishlist(userID);
	}
	
});

function showwishlist(userID){
	var parame = {};
	parame.userID = userID;
	parame.name = "";
	
	$.ajax({
		url : 'wishListController/getWishlist.do',
		type: 'post',
		data:parame,
		success : function(result) {
			result = JSON.parse(result);	
			if (result) {
				console.log(result);
				var n = result.rows.length;
				var wishlist = "";
				for(var i=0;i<n;i++){
					wishlist += "<div class='wishList'><a href='module/JSP/wishlist/wishlistDetails.jsp?name="+result.rows[i].name+"'>"+
							"<img src='img/"+result.rows[i].houseimg+"'></a>"+
				            "<h3 class='wishListName'>"+result.rows[i].name+"</h3></div>";
					$(".wishListmain").html(wishlist);
					
				}
			}
		}
	});
}

function addwish(){
	
	var userID = $(".loginIDURL").val();
	var parame = {};
	parame.houseID = "";
	parame.userID = userID;
	parame.name = $("#wishName").val();
	
	var myDate = new Date();
	var year = myDate.getFullYear();
	var month = myDate.getMonth() + 1;
    var day = myDate.getDate();  
    today = year+"-"+ (month<10?"0"+month:month) +"-"+(day<10?"0"+day:day);
    /*console.log(today);*/
	parame.creatTime = today;
	$.ajax({
		url : 'wishListController/addWishlist.do',
		type: 'post',
		data:parame,
		success : function(result) {
			result = JSON.parse(result);
			
			if (result) {
				location.reload(true);
				$('#wishlistbox').modal('hide');
				alert("创建成功");				
			}
		}
	});
}