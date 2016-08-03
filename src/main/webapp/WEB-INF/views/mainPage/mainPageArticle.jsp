


<script id="makeMainArticlesView" type="text/x-handlebars-template" >
{{#each .}}
	<div class="container main_article" id="selectArticle{{articleNum}}">
		<div class="row article_profile">


			<div class="img_position">
					<div class="centered"> 
						<img class="img-responsive article_img profileImg" src="{{profileImg}}" alt="">

					</div>
					
			</div>

			<a href="/{{userId}}">{{userId}}</a> 
		</div>


			{{#isOne howManyFiles}}

				{{#fileList}}

					<div class="img_position">
						<div class="centered"> 
							<img class="img-responsive article_img" src="/img/image{{storedFname}}" alt="">

						</div>
					</div>
				{{/fileList}}

			{{else}}


				<div id="article{{articleNum}}" class="carousel slide " data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">
					{{#fileList}}

					 	{{#if @first}}
					 		<li data-target="#article{{articleNum}}" data-slide-to="@key-1" class="active"></li>

		                {{else}}
		                	<li data-target="#article{{articleNum}}" data-slide-to="@key-1"></li>
		                {{/if}}
	
					{{/fileList}}


					</ol>

					<!-- Wrapper for slides -->
					<div class="carousel-inner " role="listbox">
						{{#fileList}}


							{{#if @first}}
								<div class="item active img_position">
									<div class="centered"> 
										<img class="img-responsive article_img" src="/img/image{{storedFname}}" alt="">

										<div class="carousel-caption"></div>
									</div>
								</div>
							{{else}}


								<div class="item img_position">
									<div class="centered"> 
										<img class="img-responsive article_img" src="/img/image{{storedFname}}" alt="">

										<div class="carousel-caption"></div>		
									</div>
								</div>
							{{/if}}	


						{{/fileList}}





					</div>

					<a class="left carousel-control " href="#article{{articleNum}}"
						role="button" data-slide="prev" style="background-image: none;">
						<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a> 
					<a class="right carousel-control " href="#article{{articleNum}}" 
						role="button" data-slide="next" style="background-image: none;">
						<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>


			{{/isOne}}



			<div class="btn-toolbar main_article_options">
				<div class="btn-group">
					<a href="#" class="btn btn-inverse">
						<i class="glyphicon glyphicon-thumbs-up" ></i>
					</a>
					

				</div>
				{{#isMine userId}}
					<div class="btn-group">
						<a href="#" class="btn btn-inverse">
						<i class="glyphicon glyphicon-pencil" ></i>
					</a>
						<a class="btn btn-inverse deleteArticle" articleNum='{{articleNum}}'>
							<i class="glyphicon glyphicon-trash" ></i>
						</a>
					</div>
				{{/isMine}}
			</div>
				
		



		<div class="article_content">{{content}}
			{{#locationExist location}}
				&nbsp;&nbsp;&nbsp;-<a lat="{{lat}}" lng="{{lng}}">{{location}}</a>
			{{/locationExist}}
		</div>

		<div class="main_article_reply" id="comment{{articleNum}}" article="{{articleNum}}"> <a class="getComment" >comments</a></div>
	</div>
{{/each}}
</script>


<%@ include file="../component/comment.jsp" %>