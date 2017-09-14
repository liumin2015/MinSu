$(function(){
	var agoComment = [
				  {"id":1,"userName":"游客1","time":"2014-04-04","sortID":0,"content":"第一条评论"},
				  {"id":2,"userName":"游客2","time":"2014-04-04","sortID":0,"content":"第二条评论"},
				  {"id":3,"userName":"站长","time":"2014-04-04","sortID":1,"content":"第一条评论的回复"},
				  {"id":4,"userName":"站长","time":"2014-04-04","sortID":2,"content":"第二条评论的回复"},
				  {"id":5,"userName":"游客3","time":"2014-04-04","sortID":0,"content":"第三条评论"},
				  {"id":6,"userName":"游客2","time":"2014-04-04","sortID":4,"content":"第二条评论的回复的回复"},
				  ];
$("#articleComment").zyComment({
	"width":"355",
	"height":"33",
	"agoComment":agoComment,
	"callback":function(comment){
		console.info("填写内容返回值：");
		console.info(comment);
		// 添加新的评论
		$("#articleComment").zyComment("setCommentAfter",{"id":123, "name":"name", "content":"content", "time":"2014-04-14"});
	}
});
});
