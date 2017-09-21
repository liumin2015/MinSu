$(function(){
	
	search();
	
	$(".houseplaceSearch").click(function(){
		search();
	});
})

function search() {
	var parame = {};
	parame.houseID = "";
	parame.location = $(".locationTxt").val();
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
						var n= data.rows.length;
					/*	console.log(n);*/
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
							

							
							  var content = document.getElementById("houseShow");
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