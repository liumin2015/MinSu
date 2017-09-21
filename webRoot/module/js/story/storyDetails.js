$(function(){
	
	search();
});

/*
 * 读取故事详情
 */
function search() {
	var url = document.URL;
	var arrurl=url.split("?ID=");
	
	var parame = {};
	parame.storyID = arrurl[1];
	parame.location ="";
	$.ajax({
				data : parame,
				url : 'storyController/getStory.do',
				type : 'post',
				success : function(data) {
					data = JSON.parse(data);					
					if (data) {
						console.log(data);
						$(".userphoto").attr("src","img/"+data.rows[0].photo);
						$("#username1").html(data.rows[0].userName);						
						var day = changeTime(data.rows[0].storycreatTime);
						$(".day").html(day);
						var storyimglist = "";
						for(var i=0;i<data.rows.length;i++){
							storyimglist += "<img class='storyImgs' src='img/"+data.rows[i].name+"'>";
							$(".storyImgcontainer").html(storyimglist);
						}
						$(".storyads").html(data.rows[0].houseaddress);
						$(".storyArticleTitle").html(data.rows[0].title);
						$(".storyArticleDet").html(data.rows[0].storyInd);
						$(".houseusername").html(data.rows[0].userName);
						$(".housename").html(data.rows[0].houseName);
						$(".houseName").html(data.rows[0].roomType);
						$(".my-rating").starRating({
							initialRating : data.rows[0].satisfy,
							starSize : 20,
							readOnly : true
						});
					
				}
			}
	});
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