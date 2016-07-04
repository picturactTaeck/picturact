<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="resources/css/friend_nav.css" />
<link rel="stylesheet" href="resources/css/bootstrap.min.css" />
</head>
<body>
	
	<ul class="sidebar-nav">
		<a id="menu-close" href="#" class="btn btn-light btn-lg pull-right toggle"><i class="glyphicon glyphicon-remove"></i></a>
		<!--나의 personal page -->
		<li class="sidebar-brand"><a href="/${useId}" class="closeMenu">${userName}</a>
		</li>

		<!--friend name click 할때 친구의 personal page & chat  -->
		<c:forEach var="follower" items="${followerList}">
			<li><a href="#" data-toggle="collapse"
				data-target="#show${follower}">${follower}</a>
				<div id="show${follower}" class="panel-collapse collapse">
					<ul id="friendsMenu">
						<li><a href="/${follower}">${follower}'s Page</a></li>
						<li><a href="#">Talk with ${follower}</a></li>
					</ul>
				</div></li>
		</c:forEach>
		<li><a href="#" id="chatFollower">Talk with 피플</a></li>
	</ul>
	
<div id="chat">
	<%@ include file="chat.jsp" %>
</div>

<script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
<script src="resources/js/chat.js"></script>

</body>
</html>