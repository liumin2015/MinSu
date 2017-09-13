$(function(){
	 
	 /*
	  * 读取首页房源信息
	  * 
	var hotcase = document.getElementById("hot-case").getAttribute('value');
	 $.ajax( {  
		 data:{'artCaseType':'案例'},
	     url:'articleController/getArticle.do',// 跳转到 action  
	     type:'post',  
	     dataType:'json',
	     success:function(data) {  
   	 if(data){
   		 var hotcase= "";
	    	 var myobj=eval(data);
	    	 var j = 6;
	    	 var n = 0;
	    	 var day = new Date();
	    	 oYear = day.getFullYear(),
            oMonth = day.getMonth()+1,  
            oDay = day.getDate();
	    	 if(myobj.length<=j){
	    		 n = myobj.length;
	    	 }else
	    		 n = j;
	    	 for(var i=0;i<n;i++){
	    		 day.setTime(myobj[i].artCregisattime.time);

	    		 hotcase += "<li class='notices-item' >"+
	    		 "<span>"+"</span>"+"<div class='tittle'>"+
		    	 "<a id='tittle' href="+"Portal/jsp/classicCase/CaseDetails.jsp?articleID="+
		    	 myobj[i].articleID+">"+myobj[i].artTitle.substr(0, 12)+"</a>"+
		    	 "</div>"+"<div class='date' id='date'>"+
		    	 oYear+"-"+oMonth+"-"+oDay+"</div>"+"</li>";
		    	}
	    	 var excellent = document.getElementById("hot-case");
	    	 excellent.innerHTML = hotcase;
	    	
	    	 }
   	 }
	 });*/
	
});