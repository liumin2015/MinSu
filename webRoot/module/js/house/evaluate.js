$(function(){
	
	var url = document.URL;
	var arrurl=url.split("?ID=");
	var parame = {};
	parame.houseID = arrurl[1];
	$.ajax({
		data : parame,
		url : 'evaluateController/getEvalute.do',
		type : 'post',
		success : function(data) {
			data = JSON.parse(data);					
			if (data) {
				console.log(data);
				console.log(data.rows.length);
				$(".houseEvluateNum").html(data.rows.length);
				var n= 0;
				if(data.rows.length<3){
					n = data.rows.length;
				}else{
					n=3;
				}
				var evaluatelist = "";
				for(var i=0;i<n;i++){
					evaluatelist += "<li><img class='commentuserphpto' src='img/"+data.rows[i].photo+"'>"+
						"<div class='commentcontent'>"+data.rows[i].contain+"</div></li>";
					$(".evaluatelist").html(evaluatelist);
					
				}
			}
		}
	});
});