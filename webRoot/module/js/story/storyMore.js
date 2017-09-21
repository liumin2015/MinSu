$(function(){
	
	searchStory();
	
	$(".houseplaceSearch").click(function(){
		search();
	});
})

/*
 * 首页读取故事信息
 */
function searchStory() {
	var parame2 = {};
	parame2.storyID = "";
	
	$('.location li').click(function(){
		console.log($(this).html());
		parame2.location = $(this).html();
	 
	  })
	
	    $.ajax({
		        data : parame2,
				url : 'storyController/getStory.do',
				type : 'post',
				success : function(data) {
					
					data = JSON.parse(data);
					console.log(data);
					if (data) {
						/*console.log(data);*/
						
					/*	var addresslist = "";
						var m = 0;
						if(data.rows.length<=5){
							m = data.rows.length;
						}else{
							m = 5;
						}
						for(var i = 0;i<m;i++){
							console.log(data.rows[i].houseaddress);
							var address = data.rows[i].houseaddress;
							console.log(address);
							var address1 = new Array();
							address1[i] = data.rows[i].houseaddress;
							console.log(address1);
							var result = $.unique(address1);
						     var reg = /(.)(?=.*\1)/g;//预搜索方式（有的叫断言）
						     
							
							 address1.replace(reg, "");
							
							addresslist +="<li >"+address+"</li>";
							 var content1 = document.getElementById("location");
					       	  content1.innerHTML =addresslist;
						}
						console.log(address1);
						var result = unique(address1);
						console.log(result);*/
						
						var storylist = "";
						var n= data.rows.length;						
						/*console.log(n);*/
					/*	console.log(typeof(houseslist));*/
						for (var i = 0; i < n; i++) {		
							storylist += "<div class='story-list'>"+
							"<a href='module/JSP/story/storyDetails.jsp?ID="+data.rows[i].ID+"'>"+
							"<img class='storypPhoto' id='storypPhoto' src='img/"+data.rows[i].name+"'></a>"+
					        "<div class='story-detil'>"+
						    "<img class='userphoto' id='userphoto' src='img/"+data.rows[i].photo+"'></span>"+
						    "<span class='storyitd' id='storyitd'>"+data.rows[i].title+"</span> </div></div>";

							  var content = document.getElementById("storyContainer");
					       	  content.innerHTML =storylist;
						}
					}
				}
			});
}

function unique(arr) {
    var result = [], hash = {};
    for (var i = 0, elem; (elem = arr[i]) != null; i++) {
        if (!hash[elem]) {
            result.push(elem);
            hash[elem] = true;
        }
    }
    return result;
//http://www.cnblogs.com/sosoft/
}