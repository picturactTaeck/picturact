<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>

<title>Home</title>

	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	
	<meta name="description" content="">
	<meta name="author" content="PKNU">
	
	<meta name="viewport" content="width=device-width; initial-scale=1.0">
	
	<!-- Replace favicon.ico & apple-touch-icon.png in the root of your domain and delete these references -->
	<link rel="shortcut icon" href="/favicon.ico">
	<link rel="apple-touch-icon" href="/apple-touch-icon.png">
	
	
	<script src="resources/js/jquery.js"></script>
	
	<link rel="stylesheet" href="resources/css/bootstrap.min.css" />
	
	
	
	
	<script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
	<script>
	$(document).ready(function(){
		
		$("#followButton").on("click", function(){
			alert("hey");
			changeFollowState('${whosPage}', $("#followButton").val());
			
		});
		
	
		
		
	});
	
	
	</script>
</head>

<body >

	<!-- Navigation -->
	<nav class="navbar" role="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/">picturact</a>
			</div>
			
			
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			
				<ul class="nav navbar-nav">
					
					<!-- <li><a href="/personalInfoEdit.do">Profile</a></li> -->
					<!-- 이것도 마찬가지욤! -->
					<li><a href="#profile">Profile</a></li>
					
					
					<!-- 원래 쓰던 노티스  -->
					<!-- <li><a href="/notice.admin?pageNum=1">Notice</a></li> -->
					<!-- 새로 만들거에영 id noticeOpen 해서 whatPost 값을 바꾸던지 하겟음 -->
					<li><a href="#notice" id="noticeOpen">Notice</a></li>
					
				</ul>
				
				<!-- 네비게이션 우측 -->
				<ul class="nav navbar-nav navbar-right">
		        	<li><a id="menu-toggle" href="#"><i class="glyphicon glyphicon-user" aria-hidden="true"></i></a></li>
					<li><a href="startPage.jsp"><i class="glyphicon glyphicon-off" aria-hidden="true"></i></a></li>
		      	</ul>
		      	
			</div>
			<!-- /.navbar-collapse -->


    	</article>
    </section>

   
   
	<!-- Bootstrap Core JavaScript -->
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/friend_nav.js"></script>
</body>
</html>
