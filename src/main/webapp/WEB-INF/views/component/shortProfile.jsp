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
			
				</span>

			</div>
			<div class="">

					<a>Hi~ This is ${whosPage}'s page</a>

			</div>
			

		</div>
		</div>

	</div>

</header>
