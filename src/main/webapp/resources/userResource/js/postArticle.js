$.ajaxSetup({
	type : "POST",
	async : true,
	dataType : "json",
	error : function(xhr){
		alert("error html = " + xhr.statusText);
	}
});
$(document).ready(function(){
// 	var deleteFileList = [];

	var imgs = new Array();
	$("#addPostImg").on("change", function(){


		showThumbnails(this.files);
		addImgInfo(this.files);
		$(this).val("");

		
		
	});

	$(document).on("click",".thumbnailClick",function(){

		var index = $(".thumbnailClick").index($(this));
		alert(index);
//		$(this).attr("style","display:none");
		$(this).remove();
		imgs.splice(index,1);
		alert(imgs)

		
	});
	
	
	function addImgInfo(files){
		$.each(files, function(){
			imgs.push(this);
		});
		alert(imgs);
		
		
	
	}
	
	
	$("#postArticle").on('click',function(){
		var formData = new FormData();
		formData.append("postImgs", imgs);

		formData.append("content",$("#postContent").val());
		




		$.ajax({
			url:"/post.article",
			contentType: false,
			processData: false,
		 	data:formData,
		 	dataType:"text",
			success: function (data){

				$("#addImage").val("");
				$("#postContent").val("");

			},
			error: function(a,b,c){
				alert('실패 a : '+ a + " b : " + b + " c : " + c);
			}
			
	 });
		

		
	});
	
	
	
	
	
	
	
		
	


});











function showThumbnails(files){
	
		for(var i=0;i<files.length;i++){
			var file = files[i];
			
			var reader = new FileReader()
			reader.readAsDataURL(file);
			reader.onload = function(e){	
				var html = "";
					html+='<div class="col-xs-2 thumbnail thumbnailClick">';
//					html+="<small data-src='"+data+"' class='fileNameList'></small>";
					html+='<div class="thumbnail2 ">';
					html+='<div class="centered">';
					html+='<img src="'+e.target.result+'"/>';
					html+='</div><div></div>';
				
				 $("#viewThumbnails").append(html);
			};
		}


}


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