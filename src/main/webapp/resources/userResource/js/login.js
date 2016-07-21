function div_show(value){
	if(value=="Join"){
// 		alert(value);
// 		.attr쓰기
		$("#changeLogin").attr("style", "display:none");
		$("#changeJoin").attr("style", "display:");
// 		$("#changeLogin").hide();
// 		$("#changeJoin").show();
	}else{
// 		alert(value);
		$("#changeLogin").attr("style", "display:");
		$("#changeJoin").attr("style", "display:none");
// 		$("#changeLogin").show();
// 		$("#changeJoin").hide();
	}
}

$(function(){
	$("#Login, #Join").on("click",function(){
		div_show(this.id);
	});
});


$.ajaxSetup({
	type : "POST",
	async : true,
	dataType : "json",
	error : function(xhr){
		alert("error html3 = " + xhr.statusText);
	}
});
$(document).ready(function(){
	
	 $("#idCheck").on("click", function(){
// 		 alert("login check");
// 		 console.log("ajax");
		 var id=$("#userId").text();
		 var pass=$("#userPassword").text(); 
		 
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
				url:"/login.login",
	// 			data{}에서는 EL을 ""로 감싸야함..그외에는 그냥 사용
				data:{	
					userId:$("#userId").text(),
					userPassword:$("#userPassword").text()
				},
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