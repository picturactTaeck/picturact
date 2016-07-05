<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>

<title>Home</title>

	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="description" content="">
	<meta name="author" content="PICTURACT">
	<meta name="viewport" content="width=device-width; initial-scale=1.0">

<!-- 	<link rel="shortcut icon" href="/favicon.ico"> -->
<!-- 	<link rel="apple-touch-icon" href="/apple-touch-icon.png"> -->
	
	
	
	<script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
<!-- 	original bootstrap's ones -->
	<script src="resources/bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css" />
	<link rel="stylesheet" href="resources/bootstrap/css/bootstrap-theme.min.css" />
	
<!-- 	user style css -->
	<link rel="stylesheet" href="resources/userResource/css/mainNavyBar.css?<?=filemtime('style.css')?>" />
	<link rel="stylesheet" href="resources/userResource/css/postArticle.css" />
	<link rel="stylesheet" href="resources/userResource/css/mainPageArticle.css?<?=filemtime('mainPageArticle.css')?>" />
	<link rel="stylesheet" href="resources/userResource/css/personalPageArticle.css?<?=filemtime('personalPageArticle.css')?>" />
	<link rel="stylesheet" href="resources/userResource/css/personalPageProfile.css?<?=filemtime('personalPageProfile.css')?>" />
	<link rel="stylesheet" href="resources/userResource/css/friend_nav.css?<?=filemtime('friend_nav.css')?>" />
	
	
	<!-- 	user style js -->
	<script src="resources/userResource/js/friend_nav.js?<?=filemtime('friend_nav.js')?>"></script>
	<script src="resources/userResource/js/postArticle.js?<?=filemtime('postArticle.js')?>"></script>
	
<!-- 	font css -->
	<link rel="stylesheet" href="resources/userResource/css/font.css?<?=filemtime('font.css')?>" />
	
	
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
	<!-- main page navy bar  -->
	<%@ include file="mainNavBar/mainNavBar.jsp" %>

  	<!--Friend Navigation -->
	<%@ include file="friend/friend_nav.jsp" %>


    

    	
    		<!-- Article -->
    		<c:if test="${whatPost==1}">
    			<%@ include file="mainPage/postArticle.jsp" %>
    			<%@ include file="mainPage/mainPageArticle.jsp" %>
    		</c:if>
    		
    		<!-- PersonalPage -->
    		<c:if test="${whatPost==2}">
    			<%@ include file="component/shortProfile.jsp" %>
    			<%@ include file="component/gridOrganizedArticle.jsp" %>
    		</c:if>
    		
    		<!-- Notice -->
    		<c:if test="${whatPost==3}">
		   		<%@ include file="notice/notice.jsp" %>
		   	</c:if>


   
   

</body>
</html>
