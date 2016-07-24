
<section>
	<div class="container post_article">
		<form id="post" action="/postArticle.main" method="post"
			enctype="multipart/form-data">
			<div class="row ">
				<div class="post_warp_filebutton">
					<input type="file" id="addPostImg" name="addPostImg"
						accept="image/*, video/*" multiple>
				</div>
			</div>
			
			<div class=" row post_thumbnails" id="viewThumbnails"></div>
			<div class="row ">
				<div id="postContent" class="post_write_content" contenteditable='true'>
					
				</div>

			</div>
			<div class="row tag_sth">
				<a  ><i class="glyphicon glyphicon-user" aria-hidden="true" ></i></a>
				<span id="tagPerson"></span>
				<a data-toggle="modal" data-target="#myModal" id="loadMapModal"><i class="glyphicon glyphicon-map-marker" aria-hidden="true" ></i></a>
				<span id="yourLocation"></span>
			</div>
			<div class="row post_button">
				
				<input type="button" id="postArticle" class="btn btn-default btn-sm border-top-radius" value="upload">
				<input type="button" id="reset" class="btn btn-default btn-sm border-top-radius" value="reset">
				
			</div>

			 

		</form>

		<%@ include file="../map/modal.jsp"%>

	</div>


</section>

