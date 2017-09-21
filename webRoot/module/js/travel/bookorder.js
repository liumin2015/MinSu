$(function(){
	var url = document.URL;
	var path = url.split("?name=");
	console.log(path[1]);
	$(".pay").attr('src',"/MinMinSu/bookimg/"+path[1]);
})