$(function() {
	search();
	searchStory();
	
	$("#searchbtn").click(function(){
		search();
	});
	
	$("#morehouse").click(function(){
		window.location.href ="module/JSP/house/MoreHouse.jsp";
	});
	
});

/*
 * 首页读取房源信息
 */
function search() {
	var parame = {};
	parame.houseID = "";
	parame.location = $(".locationTxt").val();
	parame.startime = $(".startimeTxt").val();
	parame.endtime = $(".endtimeTxt").val();
	parame.peopleNum = $(".peopleNum").val();
	$.ajax({
				data : parame,
				url : 'houseController/getHouse.do',
				type : 'post',
				success : function(data) {
					data = JSON.parse(data);
					if (data) {
						console.log(data);
					
						var n = 0;
						console.log(data.rows.length);
						if(data.rows.length>6){
							n = 6;
						}else{
							n= data.rows.length;
						}
						console.log(n);
						var houseslist = "";
						console.log(typeof(houseslist));
						for (var i = 0; i < n; i++) {
							houseslist += "<div class='houseslist '>"+
							        "<a href='module/JSP/house/HouseDetails.jsp?ID="+data.rows[i].ID+"'>" +
									 "<img id='houses-photo' class='houses-photo' src='img/"+data.rows[i].name+"'></a>"+ 
									"<div class='houses-detil'>"+ 
									"<span class='price' id='price'>￥"+data.rows[i].price+"</span>"+ 
									"<span class='houseads' id='houseads'>"+data.rows[i].address+"</span>"+ 
									"<span class='housetype' id='housetype'>"+data.rows[i].type+"</span>"+ 
									"</div>"+ 
									"<div class='houses-evaluate'>"+
									"<lable class='star my-rating"+i+"'>"+
									/*"★★★★★☆☆☆☆☆".slice(5 - data.rows[i].satisfy, 10 - data.rows[i].satisfy)+*/ 
									"</lable><span class='evaluateNum'>"+data.rows[i].roomType+"</span>"+ 
									"</div></div>";
							
						  /*  console.log(typeof(data.rows[i].satisfy));*/
							

							
							  var content = document.getElementById("housescontainer");
					       	  content.innerHTML =houseslist;
						/*var houseHtml=template("houseHtml",data);
						var content = document.getElementById("housescontainer");
						content.innesrHTML =houseHtml;*/
						
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

/*
 * 首页读取故事信息
 */
function searchStory() {
	var parame2 = {};
	parame2.storyID = "";
	parame2.location = "";
	
	    $.ajax({
		        data : parame2,
				url : 'storyController/getStory.do',
				type : 'post',
				success : function(data) {
					
					data = JSON.parse(data);
					console.log(data);
					if (data) {
						/*console.log(data);*/
						
						var n = 0;
						console.log(data.rows.length);
						if(data.rows.length>4){
							n = 4;
						}else{
							n= data.rows.length;
						}
						/*console.log(n);*/
						var storylist = "";
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




