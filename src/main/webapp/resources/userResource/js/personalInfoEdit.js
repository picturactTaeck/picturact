$(document).ready(function(){
	
	
	$("#show_profile").on("click",function(){
		$("#uploadProfile").click();
	});
	/*
	$("#insert_profileImg").on("drop",function(event){
		
		var files = event.originalEvent.dataTransfer.files;
		var file = files[0];
		showProfileThumnails(file);
		
	});
	*/
	$("#uploadProfile").on("change",function(){
		var file = $(this)[0].files[0];
		showProfileThumbnails(file);
	});
	
});

function showProfileThumbnails(file){
	
	var reader = new FileReader();
	reader.readAsDataURL(file);
	reader.onload = function(e){
		$('#show_profile').attr('src',e.target.result);
	};
}