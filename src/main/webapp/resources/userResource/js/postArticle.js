$.ajaxSetup({
	type : "POST",
	async : true,
	dataType : "json",
	error : function(xhr){
		alert("error html = " + xhr.statusText);
	}
});
$(document).ready(function(){
	//This parameter is used to save the images's info
	//when the delete event occur the type of input can't be done that event
	//(because input type file is read only)
	//so I use this array for delete file before sending to server
	var imgs = new Array();
	//when the input image 
	$("#addPostImg").on("change", function(){
		showThumbnails(this.files);
	
	
		$(this).val("");
	
	});
	//deleting file immediately
	$(document).on("click",".thumbnailClick",function(){
		
		var index = $(".thumbnailClick").index($(this));
		alert(index);
		$(this).remove();
		//splice function is remove element of array
		imgs.splice(index,1);
		
	});
	
	
	
	$("#postArticle").on('click',function(){
		var formData = new FormData();
		for(var i=0; i<imgs.length; i++){
			formData.append("postImgs", imgs[i]);
		}
		formData.append("content",$("#postContent").text());
		

		//It can be send data asynchronously to server
		$.ajax({
			url:"/post.article",
			contentType: false,
			processData: false,
		 	data:formData,
		 	dataType:"text",
			success: function (data){
				
				$("#addImage").val("");
				$("#postContent").text("");
				$("#viewThumbnails").html("");
				imgs = new Array();
				alert(data);

			},
			error: function(a,b,c){
				alert('실패 a : '+ a + " b : " + b + " c : " + c);
			}
			
	 });
		
	});
	
	function showThumbnails(files){
		
		for(var i=0;i<files.length;i++){
			var file = files[i];
			imgs.push(file);
			var reader = new FileReader()
			reader.readAsDataURL(file);
			reader.onload = function(e){	
				var html = "";
					html+='<div class="col-xs-2 thumbnail thumbnailClick">';
					html+='<div class="thumbnail2 ">';
					html+='<div class="centered">';
					html+='<img src="'+e.target.result+'"/>';
					html+='</div><div></div>';
				
				 $("#viewThumbnails").append(html);
			};
		}


}
	
	
	
	
	
		
	


});














function checkImageType(fileName){	
//		/i는 대소문자 구분 하지 말라는 뜻임
	var pattern = /.jpg|.gif|.png/i;

	
	return fileName.match(pattern);		
}



function getImageLink(fileName){
	if(!checkImageType(fileName)){
		return;
	}

	var front = fileName.substr(0,12);
	var end = fileName.substr(14);
//	alert(front + end);		
	return front + end;	
}

function getOriginalName(fileName){
	if(checkImageType(fileName)){
		return;
	}
	
	var idx = fileName.indexOf("_") + 1 ;
	return fileName.substr(idx);	
}