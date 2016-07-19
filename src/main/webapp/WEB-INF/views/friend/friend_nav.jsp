<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="right">
  <div id="sidebar-wrapper" aria-hidden="true">

	<ul class="sidebar-nav">
		<a id="menu-close" href="#" class="btn btn-light btn-lg pull-right toggle">
			<i class="glyphicon glyphicon-remove"></i>
		</a>
		
		<!--my personal page -->
		<li class="sidebar-brand"><a href="/${useId}" class="closeMenu">${userId}</a>
		</li>

		<!--friend's personal page & chat  -->
		<c:forEach var="follower" items="${followList}">
			<li><a href="#" data-toggle="collapse"
				data-target="#show${follower}">${follower}</a>
				<div id="show${follower}" class="panel-collapse collapse">
					<ul id="friendsMenu">
						<li><a href="/${follower}">${follower}'s Page</a></li>
						<li><a href="#" class="chatFollower" follower="${follower}">Talk with ${follower}</a></li>
					</ul>
				</div></li>
		</c:forEach>
		
	</ul>
</div>

		<%@ include file="chat2.jsp" %>

</div>