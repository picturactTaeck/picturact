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
<link rel="stylesheet" href="resources/userResource/css/mainNavyBar.css?<?=filemtime('style.css')?>" />
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
<%-- 	<script src="resources/userResource/js/chat2.js?<?=filemtime('chat2.js')?>"></script> --%>
<script src="resources/userResource/js/getPersonalArticle.js"></script>

<!-- Node js testing server check!!!!! -->
<script src="http://210.119.12.240:3033/socket.io/socket.io.js"></script>

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

				var socket = io.connect('http://210.119.12.240:3033');
				socket.emit('join', {'userId' : '${userId}'});
				
				
				$(".chatFollower").on(
						"click",
						function() {
							event.preventDefault();
							alert($(this).attr("follower"));
							$.ajax({
								url : "/get.message",
								type : "POST",
								async : true,
								data : {
									chatId : $(this).attr("follower")
								},
								dataType : "json",
								success : function(data) {

									var source = $("#chatArea").html();
									var template = Handlebars.compile(source);

									Handlebars.registerHelper('whereAppend',
											function(userId, options) {
												if ('${userId}' == userId) {
													return 'right';

												} else {
													return 'left';
												}
											});
									Handlebars.registerPartial(
											'chatContentAppend', $(
													"#chatAppend").html());

									var html = "";

									var html = template(data);
									$("#chatDiv").append(html);

								},
								error : function(xhr) {
									alert("error html = " + xhr.statusText);
									// 				function(a,b,c){
									// 					 alert('실패 a : '+ a + " b : " + b + " c : " + c);}
								}

							});

						});

				$(document).on("click", ".chat_close", function() {

					var index = $(".chat_close").index($(this));
					$('.chat_popup').eq(index).remove()

				});

				$(document).on("click", ".sendMessage", function() {

					var toWho = $(this).attr("toWho");
					var message = $("#sendChatCon" + toWho).text();
					alert(message);
					socket.emit('message', {'sendId' : '${userId}','receiveId' : toWho,	'message' : message});
					var data = {'userId' : '${userId}','message' : message};
					
					var source = $("#chatAppend").html();
					var template = Handlebars.compile(source);
					var html = template(data);
					$('#chat' + toWho).append(html);
					$("#sendChatCon" + toWho).text("");
				});

				socket.on('message', function(data) {
					var source = $("#chatAppend").html();
					var template = Handlebars.compile(source);
					var html = template(data);
					$('#chat' + data.userId).append(html);

				});
				
				

			});
</script>

</head>

<body>

	<!-- main page navy bar  -->
	<%@ include file="mainNavBar/mainNavBar.jsp"%>
	<!--Friend Navigation -->
	<%@ include file="friend/friend_nav.jsp"%>
	<!-- 	chat area it will appear bottom of browser -->
	<div id="chatDiv" class="chatDiv"></div>


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

	<section id="articlesArea"></section>







</body>
</html>
