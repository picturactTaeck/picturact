<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!--  <meta charset="utf-8"> -->
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
<title>회원가입</title>
    <script src="//code.jquery.com/jquery-1.12.0.min.js"></script>

<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">        
<link rel="stylesheet" href="resources/assets/bootstrap/css/bootstrap.min.css">

</head>
<body>
                        	<div class="form-top" >
                        		<div class="form-top-left">
                        			<h3>Join</h3>
                            		<p>Fill in the form below to get instant access:</p>
                        		</div>
                        		<div class="form-top-right">
                        			<span aria-hidden="true"></span>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <form action="" method="post">
			                    	<div class="form-group">
			                    		<!-- ID -->
			                        	<input type="text" name="form-first-name" placeholder="Input your ID..." class="form-first-name form-control" id="userId">
			                        </div>
			                        <div class="form-group">
			                        	<!-- PASSWORD -->
			                        	<input type="password" name="form-last-name" placeholder="Input your Password..." class="form-password form-control" id="userPw">
			                        </div>
			                        <div class="form-group">
			                        	<!-- E-MAIL -->
			                        	<input type="text" name="form-email" placeholder="E-mail..." class="form-email form-control" id="userEmail">
			                        </div>
			                        <div class="form-group">
			                        	<!-- 메모 -->
			                        	<textarea name="form-about-yourself" placeholder="About yourself..." class="form-about-yourself form-control" id="userMemo"></textarea>
			                        </div>
			                        <span style="float:right">
<!-- 				                        <input type="button" class="btn btn-default" value="Join" /> -->
				                        <button type="submit" style="" class="btn btn-default" >Join</button>
				                        <input type="button" class="btn btn-link-2 scroll-link" onclick="location.href='#page-top'" value="Cancel">
			                        </span>
			                    </form>
		                    </div>
			                    

        <script src="resources/assets/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>