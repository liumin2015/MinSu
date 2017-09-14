
$(function(){
	//获取要定位元素距离浏览器顶部的距离
	var navH = $(".bookHouse").offset().top; 
	var navH2 = $(".houseContainerNav").offset().top;
    var navH3 = $(".address").offset().top - 450;
    console.log("navH3"+navH3);
	//滚动条事件
    $(window).scroll(function(){
    	var $this=$(this)
    	//获取滚动条的滑动距离
    	var scroH = $this.scrollTop();
        console.log("scroH"+scroH);
        //滚动条的滑动距离大于等于定位元素距离浏览器顶部的距离，就固定，反之就不固定
        if(scroH>=navH&&scroH<navH3){
        	$(".bookHouse").css({"position":"fixed","top":0});
        }else if(scroH<navH) {
        	$(".bookHouse").css({"position":"absolute","top":"350px"});
        }
        if(scroH>=navH2){
        	$(".houseContainerNav").css({"position":"fixed","top":0,"z-index":"101",});
        }else if(scroH<navH) {
        	$(".houseContainerNav").css({"position":"relative"});
        }
    });
});