$(document).ready(function(){
	
	//comment Button click
	$(document).on("click",".getComment",function(event){
		event.preventDefault();
		getComment($(this).parent());
		
	});
	
	$(document).on("click",".writeComment",function(tag){

		var tag = $(this).attr("article");
		var commentContent = $("#writeCommentContent"+tag).val();
		alert(commentContent);
		$.ajax({
			url : "/writeComment.comment",
			type : "POST",
			async : true,
			dataType:'json',
			data : { 
				articleNum : tag,
				commentContent : commentContent
			},
			success : function(data) {
//				showComment($(this).parent(),data);
				alert(data.result);
				
				var html = '<div class="row ">';
				html += '<div class="commentUserDiv"><a href="/'+data.commentId+'">'+data.commentId+'</a></div>';
				html += '<div class="commentContentDiv">'+commentContent+'</div></div>';
				$('#comment'+tag+" .readComment").append(html);
				$("#writeCommentContent"+tag).val("");
				
			}
		});
	});
})

function getComment(tag){
	var articleNum = tag.attr("article");
	$.ajax({
		url : "/getComments.comment",
		type : "POST",
		async : true,
		data : { articleNum : articleNum},
		dataType : "json",
		success : function(data) {
			showComment(tag, data);
		}
	});
	
}

function showComment(tag,data){
	
	var source=$("#makeComment").html();
	var template = Handlebars.compile(source);
	tag.html(template(data));	

}