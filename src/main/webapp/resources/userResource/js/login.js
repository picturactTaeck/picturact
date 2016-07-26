$.ajaxSetup({
	type : "POST",
	async : true,
	dataType : "JSON",
	error : function(xhr){
		alert("error html3 = " + xhr.statusText);
	}
});
$(document).ready(function(){
	
	$(".changeLogin").on("click",function(){
		$("#loginForm").attr("style", "display:inline");
		$("#joinForm").attr("style", "display:none");
	});
	$(".changeJoin").on("click",function(){
		$("#joinForm").attr("style", "display:inline");
		$("#loginForm").attr("style", "display:none");
	});
	
	 $("#idCheck").on("click", function(){
// 		 alert("login check");
// 		 console.log("ajax");
		 var id=$("#userId").val();
		 var pass=$("#userPassword").val(); 
		 
		 if(id==""){
		 	alert("Enter your id.");
		 	$("#userId").focus();
		 	return false;
		 }
		 if(pass==""){
		 	alert("Enter your password.");
		 	$("#userPassword").focus();
		 	return false;
		 }	
		 
		 $.ajax({
			 	type : "POST",
				url:"/login.member",
	// 			data{}에서는 EL을 ""로 감싸야함..그외에는 그냥 사용
				data:{userId:id, userPassword:pass},
				success:function(data){
					alert(data.loginStatus);
					if(data.loginStatus=="loginOK"){
						alert("welcome");
						location.href="/";
					}else if(data.loginStatus=="PasswordNO"){
						alert("Please, check your password");
					}else if(data.loginStatus=="NoId"){
						alert("This ID is not our member");
					}
					
				}
				,error:function(a,b,c){
					alert("a : "+a+"  b : "+b+"  c : "+c);
					
				}
				
				
		 });
		
	 });		 
});