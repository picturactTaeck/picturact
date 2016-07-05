<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

  <div id="sidebar-wrapper" aria-hidden="true">

	<ul class="sidebar-nav">
		<a id="menu-close" href="#" class="btn btn-light btn-lg pull-right toggle">
			<i class="glyphicon glyphicon-remove"></i>
		</a>
		
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
		
		<!-- testing -->
		<li><a href="#" id="chatFollower">Talk with 피플</a></li>
	</ul>
</div>
<!-- <div id="chat"> -->
<%-- 	<%@ include file="chat.jsp" %> --%>
<!-- </div> -->

<!-- <script src="resources/js/chat.js"></script> -->
