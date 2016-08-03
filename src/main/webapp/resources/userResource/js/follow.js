	$(document).ready(function(){
		
		$("#followButton").on("click", function(){

			changeFollowState();
			
		});
		
	
		
		
	});
	function changeFollowState(){


		
		$.ajax({
			
			url:"/changeState.follow",
			// 			data{}에서는 EL을 ""로 감싸야함..그외에는 그냥 사용
						data:{	
							pageId:$("#followButton").attr("user"),
							follow:$("#followButton").attr("followState")
							
						},
						success:function(data){

							
							if(data==1){
								$("#followButton").attr("class","btn btn-default border-top-radius btn-xs active personal_profile_follow active");
								$("#followButton").val("-unfollow");
								alert("follow complete!");


							}else if(data==0){
								$("#followButton").attr("class","btn btn-default border-top-radius btn-xs active personal_profile_follow");
								$("#followButton").val("+follow");
								alert("unfollow complete!");


							}
							
							
						}
			
		});
	}
		