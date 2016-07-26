<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<header>
	<div class="container">
	<div class="row personal_page_profile_row">
		<div class="col-xs-4  personal_profile_img">
			<div class="profile_img">
				<div class="img_position">
						<div class="centered"> 
							<img class="img-rounded  img-responsive article_img profile_img" src="${profileInfo.profileImg}" alt="...">
						</div>
					</div>
			</div>


		</div>
		<div class="col-xs-8 ">
			
			<div class="personal_profile_info" style="">
				<span class="personal_profile_userid"><font>${whosPage}</font></span>
				<span class="">
					<c:if test="${userId ne whosPage}">
						<c:if test="${follow==0}">
							<input type="button" id="followButton" followState="${follow}" user="${whosPage}" class="btn btn-default border-top-radius btn-xs personal_profile_follow" value="+follow">
						</c:if>
						<c:if test="${follow==1}">
							<input type="button" id="followButton" followState="${follow}" user="${whosPage}" class="btn btn-default border-top-radius btn-xs active personal_profile_follow active" value="-unfollow">
						</c:if>
					</c:if>
					<!-- Personal Information Edit Button -->
					<c:if test="${userId == whosPage}">
						<a id="editInfo" href="/editInfo" class="btn btn-default btn-xs pull-right" user="${userId}">Edit</a>
					</c:if>
				</span>

			</div>
			<div class="" style="word-break:break-all;">

					${profileInfo.profileMessage}
					<br>
					${profileInfo.email}

			</div>
			

		</div>
		</div>

	</div>

</header>
