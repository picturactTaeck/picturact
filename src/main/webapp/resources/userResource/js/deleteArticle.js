$(document).on("click",".deleteArticle",function(){
	var articleNum = $(this).attr('articleNum');
	$.ajax({
		url:'delete.article',
	 	data:{
	 		articleNum:articleNum
	 		},
	 	
	 	dataType:"text",
		success: function (data){
			alert(data);
			$("#selectArticle"+articleNum).remove();
			
		}
	});

});