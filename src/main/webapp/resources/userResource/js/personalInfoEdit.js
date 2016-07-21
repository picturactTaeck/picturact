$.ajaxSetup({
	type : "POST",
	async : true,
	dataType : "json",
	error : function(xhr){
		alert("error html = " + xhr.statusText);
	}
});
$(document).ready(function(){
	$("#editInfo").on("click",function(){
//		$.ajax({
//			url:"/edit.member",
//			data:{
//				userId:$("#editInfo").attr("user")
//			},
//			success:function(data){
//				
//			}
//		});
		
		
	});
})