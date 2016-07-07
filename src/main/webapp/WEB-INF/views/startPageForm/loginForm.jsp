<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!--  <meta charset="utf-8"> -->
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
<title>로그인</title>
    <script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">        
<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
<script type="text/javascript">

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
		 alert("login check");
		 console.log("ajax");
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
				url:"/login.login",
	// 			data{}에서는 EL을 ""로 감싸야함..그외에는 그냥 사용
				data:{	
					userId:$("#userId").val(),
					userPassword:$("#userPassword").val()
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
		 
		 		 
//		 var path = "/"+$("#userId").val()+".newsfeed";
//		 $("#login").attr("action",path);
//		 $("#login").submit();
	 });
	 
// 	    $(".idCheck").on("click",function(){
// 	    	$.ajax({
// 				url:"/idCheck.do",
// 	// 			data{}에서는 EL을 ""로 감싸야함..그외에는 그냥 사용
// 				data:{	
// 					joinId:$("#joinId").val()
// 				},
// 				success:function(data){
// 					check(data);
// 				}
// 			});
// 	    });
});
</script>
</head>
<body>
                        		<div class="form-top-left">
                        			<h3>Login</h3>
                            		<p>Fill in the form below to get instant access:</p>
                        		</div>
                        		<div class="form-top-right">
                        		</div>
                            <div class="form-bottom">
			                    <form id="login" method="post">
			                    	<div class="form-group">
			                        	<input type="text" placeholder="Input your ID..." class="form-control" name="loginId" id="userId">
			                        </div>
			                        <div class="form-group">
			                        	<input type="password" placeholder="Input your Password..." class="form-control" name="loginPassword" id="userPassword">
			                        </div>
			                      
			                        <span style="float:right">
			                        	<input type="button" id="idCheck" class="btn btn-default" value="confirm" >
			                        	
			                        </span>
			                    </form>
		                    </div>


        <script src="resources/bootstrap/js/bootstrap.min.js"></script>
<!--         <script src="resources/assets/js/scripts.js"></script> -->
</body>
</html>