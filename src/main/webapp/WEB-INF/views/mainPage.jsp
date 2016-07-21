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
<!-- 	<meta name="viewport" content="width=device-width; initial-scale=1.0"> -->

<!-- 	<link rel="shortcut icon" href="/favicon.ico"> -->
<!-- 	<link rel="apple-touch-icon" href="/apple-touch-icon.png"> -->



<script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
<!-- 	handlebars cdn -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.0.5/handlebars.js"></script>
<!-- 	<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.0.5/handlebars.runtime.js"></script> -->
<!-- 	<script src="resources/handlebars/handlebars.runtime.js"></script> -->




<!-- 	original bootstrap's ones -->
<script src="resources/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="resources/bootstrap/css/bootstrap-theme.min.css" />



<!-- 	user style css -->
<link rel="stylesheet" href="resources/userResource/css/mainNavBar.css?<?=filemtime('mainNavBar.css')?>" />
<link rel="stylesheet" href="resources/userResource/css/postArticle.css" />
<link rel="stylesheet" href="resources/userResource/css/mainPageArticle.css" />
<link rel="stylesheet" href="resources/userResource/css/imageView.css" />
<link rel="stylesheet" href="resources/userResource/css/personalPageArticle.css?<?=filemtime('personalPageArticle.css')?>" />
<link rel="stylesheet" href="resources/userResource/css/personalPageProfile.css?<?=filemtime('personalPageProfile.css')?>" />
<link rel="stylesheet" href="resources/userResource/css/friend_nav.css?<?=filemtime('friend_nav.css')?>" />
<link rel="stylesheet" href="resources/userResource/css/chat2.css?<?=filemtime('chat2.css')?>" />

<!-- 	user style js -->

<script src="resources/userResource/js/friend_nav.js?<?=filetime('friend_nav.js')?>"></script>
<script src="resources/userResource/js/postArticle.js?<?=filetime('postArticle.js')?>"></script>
<script src="resources/userResource/js/follow.js?<?=filetime('follow.js')?>"></script>
	<script src="resources/userResource/js/chat2.js"></script>
<script src="resources/userResource/js/getPersonalArticle.js"></script>
<script src="resources/userResource/js/getPersonalArticle.js"></script>

<!-- Node js testing server check!!!!! -->
<script src="http://pknu1.kr:3033/socket.io/socket.io.js"></script>

	<!-- google map -->
	<script src="resources/userResource/js/map.js"></script>	
	<link href="http://code.google.com/apis/maps/documentation/javascript/examples/default.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyARM8OQ3-FZctDPJpmiRN9aCXkiQeSrcPM&callback=initialize"></script>	


<!-- 	font css -->
<link rel="stylesheet"
	href="resources/userResource/css/font.css?<?=filemtime('font.css')?>" />
<!-- 	<script> -->
<!-- // 	$(document).ready(function(){ -->
<!-- // 		var index = 2; -->
<!-- // 		alert("abc"); -->
<%-- // 		alert("${followList["+index+"]}"); --%>
<%-- // 		$('#aaa').text("${followList}"); --%>

<!-- // 	}) -->
<!-- 	</script> -->

<script>
	$(document).ready(function() {

				if ('${whatPost}' == '1') {
					getArticle('getMain.article', '');
				} else if ('${whatPost}' == '2') {
					getArticle('getPersonal.article', '${whosPage}');
				}


			});
</script>

</head>

<body>

	<!-- main page navy bar  -->
	<%@ include file="mainNavBar/mainNavBar.jsp"%>
	<!--Friend Navigation -->
	<%@ include file="friend/friend_nav.jsp"%>
	<!-- 	chat area it will appear bottom of browser -->
	<div id="chatDiv" class="chatDiv" user='${userId}'></div>

	${saveDir}
	<!--     		Article -->
	<c:if test="${whatPost==1}">
		<%-- 				<%@ include file="mainPage/mainPageArticle.jsp" %> --%>
		<%@ include file="mainPage/postArticle.jsp"%>
		<%@ include file="mainPage/mainPageArticle.jsp"%>
		<!--     			<script src="resources/userResource/js/getMainArticle.js"></script> -->
	</c:if>

	<!--     		PersonalPage -->
	<c:if test="${whatPost==2}">
		<%@ include file="component/shortProfile.jsp"%>
		<%@ include file="component/gridOrganizedArticle.jsp"%>
		<!--     			<script src="resources/userResource/js/getPersonalArticle.js"></script> -->
	</c:if>

	<!--     		Notice -->
	<c:if test="${whatPost==3}">
		<%@ include file="notice/notice.jsp"%>
	</c:if>
	
	<!-- 	Personal Information Page -->
	<c:if test="${whatPost==4}">
		<%@ include file="component/profileEdit.jsp" %>
	</c:if>

	<section id="articlesArea"></section>







</body>
</html>
