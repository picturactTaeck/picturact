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
	var formData = new FormData();
	var imgs = new Array();
	$("#addPostImg").on("change", function(){



//		insertFiles(this.files);
		showThumbnails(this.files);
		addImgInfo(this.files);
		$(this).val("");

		
		
	});

//	$("#sendArticle").on("click",function(){
//
//
//		$("form").submit();
//	});
//	
	
//	$("#post").on("click",function(){
//	
//		 $("#post").ajaxSubmit({
//
//			 	dataType:"text",
//				success: function (data){
//// 					alert(data);
//					$("#addPostImg").val("");
//					$("#viewThumbnails").empty();
//					$("#postContent").val("");
//				},
//				error: function(a,b,c){
//					alert('실패 a : '+ a + " b : " + b + " c : " + c);
//				}
//				
//		 });
//		
//	});
//	
	$(document).on("click",".thumbnailClick",function(){

		var index = $(".thumbnailClick").index($(this));
		alert(index);
//		$(this).attr("style","display:none");
		$(this).remove();
		imgs.slice(index,1);
		alert(imgs)

		
	});
	
	
	function addImgInfo(files){
		$.each(files, function(){
//			alert(this);
//			formData.append("postImgs", this);
			imgs.push(this);
		});
		alert(imgs);
		
		
	
	}
		
	


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

//		 var html= "<img class='col-xs-2 thumbnail thumnailClick'  fileNum='"+data.fileNum+"'";
//		 html +=  "src='/img/"+ data.storedFname +"'/>";
// 		 alert(e.target.result);

		
//		 $("form").append("<input type='hidden' name='fileNameList' value='"+data+"'>");
		

}


function checkImageType(fileName){	
//		/i는 대소문자 구분 하지 말라는 뜻임
	var pattern = /.jpg|.gif|.png/i;
//	alert("pattern : "+pattern);
//	alert("match : "+fileName.match(pattern));
	
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