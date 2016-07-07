	$(document).ready(function(){
		
		$("#followButton").on("click", function(){
;
			changeFollowState('${whosPage}', $("#followButton").val());
			
		});
		
	
		
		
	});
	function changeFollowState(whosPage, userId){


		
		$.ajax({
			
			url:"/changeState.follow",
			// 			data{}에서는 EL을 ""로 감싸야함..그외에는 그냥 사용
						data:{	
							pageId:whosPage,
							follow:$("#followButton").attr("followState")
							
						},
						success:function(data){

							if(data==1){
								$("#followButton").attr("class","btn btn-warning btn-sm active");
								$("#followButton").val("-unfollow");


							}else if(data==0){
								$("#followButton").attr("class","btn btn-warning btn-sm");
								$("#followButton").val("+follow");

							}
							
						}
			
		});
	}
		