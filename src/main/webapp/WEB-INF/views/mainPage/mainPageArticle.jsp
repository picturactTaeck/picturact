
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<section>
<c:forEach var="article" items="${articleList}">
	<div class="container main_article ">
		<!--profile(pictur&user's id) -->
		<div class="row article_profile ">
			<img src="http://placehold.it/40x40" alt="profile"><a href="/${article.userId}">${article.userId}</a> howmany : ${article.howManyFiles}
		</div>


<!-- 				<img class="img-responsive" src="http://placehold.it/400x400" alt=""> -->
<%-- 					<img class="img-responsive" src="/img/${files.storedFname}" alt=""> --%>
			<c:if test="${ article.howManyFiles==1}">
				<c:forEach var="files" items="${article.fileList}">
					<div class="img_position">
						<div class="centered"> 
							<img class="img-responsive article_img" src="/img/${files.storedFname}" alt="">
<!-- 					<img src="http://placehold.it/400x400" alt="profile"> -->
						</div>
					</div>
				</c:forEach>

			</c:if>

			<c:if test="${ article.howManyFiles>1}">
				<div id="main${article.articleNum}" class="carousel slide " data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">

						<c:forEach var="files" items="${article.fileList}" varStatus="fileNumStatus">
							<c:if test="${fileNumStatus.first}">
								<li data-target="#main${article.articleNum}" data-slide-to="${fileNumStatus.count-1}" class="active"></li>
							</c:if>
							<c:if test="${!fileNumStatus.first}">
								<li data-target="#main${article.articleNum}" data-slide-to="${fileNumStatus.count-1}"></li>
							</c:if>

						</c:forEach>

					</ol>

					<!-- Wrapper for slides -->
					<div class="carousel-inner " role="listbox">
						<c:forEach var="files" items="${article.fileList}"
							varStatus="fileNumStatus">
							<c:if test="${fileNumStatus.first}">
							
								<div class="item active img_position">
									<div class="centered"> 
										<img class="img-responsive article_img" src="/img/${files.storedFname}" alt="">
<!-- 									<img src="http://placehold.it/400x400" alt="profile"> -->
										<div class="carousel-caption"></div>
									</div>
								</div>
							
															
							</c:if>
							<c:if test="${!fileNumStatus.first}">

								<div class="item img_position">
									<div class="centered"> 
										<img class="img-responsive article_img" src="/img/${files.storedFname}" alt="">
<!-- 									<img src="http://placehold.it/400x400" alt="profile"> -->
										<div class="carousel-caption"></div>		
									</div>
								</div>
								

							</c:if>

						</c:forEach>




					</div>

					<!-- Controls -->
					<a class="left carousel-control " href="#main${article.articleNum}"
						role="button" data-slide="prev" style="background-image: none;">
						<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a> 
					<a class="right carousel-control " href="#main${article.articleNum}" 
						role="button" data-slide="next" style="background-image: none;">
						<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>



			</c:if>
				

<!-- 			like, edit content, trash buttons group -->
			<div class="btn-toolbar main_article_options">
				<div class="btn-group">
					<a href="#" class="btn btn-inverse"><i
						class="glyphicon glyphicon-thumbs-up" ></i></a>
					<a href="#" class="btn btn-inverse"><i
						class="glyphicon glyphicon-pencil" ></i></a>

				</div>
				<div class="btn-group">
					<a class="btn btn-inverse"
						onclick="deleteArticle();"><i
						class="glyphicon glyphicon-trash" ></i></a>
				</div>
			</div>
				
		



		<div class="article_content">test</div>
			
		<div class="main_article_reply"> reply</div>
	</div>
</c:forEach>
</section>


