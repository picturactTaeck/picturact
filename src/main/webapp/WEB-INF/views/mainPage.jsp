<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<title>Home</title>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="description" content="">
<meta name="author" content="PICTURACT">


<script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
<!-- 	handlebars cdn -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.0.5/handlebars.js"></script>



<!-- 	original bootstrap's ones -->
<script src="resources/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="resources/bootstrap/css/bootstrap-theme.min.css" />



<!-- 	user style css -->
<link rel="stylesheet" href="resources/userResource/css/mainNavBar.css" />
<link rel="stylesheet" href="resources/userResource/css/postArticle.css" />
<link rel="stylesheet" href="resources/userResource/css/mainPageArticle.css?version=2" />
<link rel="stylesheet" href="resources/userResource/css/imageView.css" />
<link rel="stylesheet" href="resources/userResource/css/personalPageArticle.css?version=1" />
<link rel="stylesheet" href="resources/userResource/css/personalPageProfile.css" />
<link rel="stylesheet" href="resources/userResource/css/friend_nav.css" />
<link rel="stylesheet" href="resources/userResource/css/chat2.css" />
<link rel="stylesheet" href="resources/userResource/css/editProfile.css" />
<link rel="stylesheet" href="resources/userResource/css/comment.css?version=2" />
<!-- 	user style js -->

<script
	src="resources/userResource/js/friend_nav.js"></script>
<script src="resources/userResource/js/postArticle.js"></script>
<script
	src="resources/userResource/js/follow.js"></script>
<script src="resources/userResource/js/chat2.js"></script>
<script src="resources/userResource/js/personalInfoEdit.js"></script>
<script src="resources/userResource/js/deleteArticle.js"></script>
<script src="resources/userResource/js/comment.js?version=2"></script>
<!-- Node js testing server check!!!!! -->

<!-- <script src="http://210.119.12.240:3033/socket.io/socket.io.js"></script> -->
<script src="http://127.0.0.1:3033/socket.io/socket.io.js"></script>


<!-- google map -->
<script src="resources/userResource/js/map.js?<?=filetime('map.js')?>"></script>
<link
	href="http://code.google.com/apis/maps/documentation/javascript/examples/default.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyARM8OQ3-FZctDPJpmiRN9aCXkiQeSrcPM"></script>


<!-- 	font css -->
<link rel="stylesheet"
	href="resources/userResource/css/font.css?<?=filemtime('font.css')?>" />



</head>

<body>

	<!-- main page navy bar  -->
	<%@ include file="mainNavBar/mainNavBar.jsp"%>
	<!--Friend Navigation -->
	<%@ include file="friend/friend_nav.jsp"%>
	<!-- 	chat area it will appear bottom of browser -->
	<div id="chatDiv" class="chatDiv" user='${userId}'></div>

	<!--     		Article -->
	<c:if test="${whatPost==1}">
		<%-- 				<%@ include file="mainPage/mainPageArticle.jsp" %> --%>
		<%@ include file="mainPage/postArticle.jsp"%>
		<%@ include file="mainPage/mainPageArticle.jsp"%>
		<!--     			<script src="resources/userResource/js/getMainArticle.js"></script> -->
		
		<section id="articlesArea" getUrl="getMain" whosPage="" userId='${userId}'></section>
		<div class="container" style="max-width: 100px;" id="viewMoreArticle"  lastArticleNum='0'>
			<img style="" src="resources/img/mainPageImg/viewmore.png">
		</div>
		<script src="resources/userResource/js/getArticle.js?version=3"></script>

	</c:if>

	<!--     		PersonalPage -->

	<c:if test="${whatPost==2}">
		<%@ include file="component/shortProfile.jsp"%>
		<%@ include file="component/gridOrganizedArticle.jsp"%>
		<!--     			<script src="resources/userResource/js/getPersonalArticle.js"></script> -->
		
		<section id="articlesArea" whosPage="${whosPage}" getUrl="getPersonal" userId='${userId}'></section>
		<div class="container" style="max-width: 100px;" id="viewMoreArticle" lastArticleNum='0'>
			<img style="" src="resources/img/mainPageImg/viewmore.png">
		</div>
		<script src="resources/userResource/js/getArticle.js?version=3"></script>

	</c:if>
	
	<!--     		Notice -->
	<c:if test="${whatPost==3}">
		<%@ include file="notice/notice.jsp"%>
	</c:if>

	<!-- 	Personal Information Page -->
	<c:if test="${whatPost==4}">
		<%@ include file="component/profileEdit.jsp"%>
	</c:if>

	



</body>
</html>
