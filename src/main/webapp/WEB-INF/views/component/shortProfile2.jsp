<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<header>
	<div class="container">
	<div class="row personal_page_profile_row">
		<div class="col-xs-4  personal_profile_img">
			<div class="profile_img">
				<img src="http://placehold.it/130x130" alt="..."
					class="img-rounded img-responsive profile_img">
			</div>

		</div>
		<div class="col-xs-8 ">
			
			<div class="personal_profile_info" style="">
				<span class="personal_profile_userid"><font>PICTURACT</font></span>
				<c:if test="${follower==0}">
					<span class="col-xs-5"
						style="min-width: 100px; padding-left: 0px; margin-top: 20px">
						<input type="button" id="followButton" class="btn btn-warning btn-sm "
						value="+follow"></span>
				</c:if>
				<c:if test="${follower==1}">
					<span class=""
						><input
						type="button" id="followButton"
						class="btn btn-default btn-sm active" value="-unfollow"></span>
				</c:if>
				
				<span class="">
					<input type="button" id="followButton" class="btn btn-default border-top-radius btn-xs personal_profile_follow" value="follow">
					<input type="button" id="followButton" class="btn btn-default border-top-radius btn-xs active personal_profile_follow" value="-unfollow">
				</span>

			</div>
			<div class="">
				<h5>${whosPage} PICTURACT
					<a>www.picturact.com</a>
				</h5>
			</div>
			

		</div>
		</div>

	</div>

</header>
