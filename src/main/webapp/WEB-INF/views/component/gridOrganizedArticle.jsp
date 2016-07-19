


<script id="makeMainArticlesView" type="text/x-handlebars-template" >

<div class="container ">
	{{#each .}}
		{{#divideRowFirst @key}}
			<div class = "row personal_articles_row">
		{{/divideRowFirst}}
		<div class="col-xs-4  personal_article_img personal_article_padding "  name="articles">
			
			{{#isOne howManyFiles}}

				{{#fileList}}

					<div class="img_position">
						<div class="centered"> 
							<img class="img-responsive article_img" src="/img/{{storedFname}}" alt="">

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
										<img class="img-responsive article_img" src="/img/{{storedFname}}" alt="">

										<div class="carousel-caption"></div>
									</div>
								</div>
							{{else}}


								<div class="item img_position">
									<div class="centered"> 
										<img class="img-responsive article_img" src="/img/{{storedFname}}" alt="">

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

			
		</div>
			
	
		{{#divideRowLast @key}}
			</div>
		{{/divideRowLast}}
	{{/each}}		
</div>


</script>


