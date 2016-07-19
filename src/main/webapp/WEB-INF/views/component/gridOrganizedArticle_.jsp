<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<section>
<div class="container ">
	
	
	<c:forEach var="article" items="${articleList}" varStatus="status">

		<c:if test="${status.index%3==0}">
			<div class = "row personal_articles_row">
		</c:if>
		<div class="col-xs-4  personal_article_img personal_article_padding "  name="articles">
			<c:if test="${ article.howManyFiles==1}">
				<c:forEach var="files" items="${article.fileList}">
				
					<div class="img_position">
						<div class="centered"> 
							<img class="img-responsive article_img" src="/img/${files.storedFname}" alt="">
<!-- 					<img src="http://placehold.it/400x400" alt="profile"> -->
						</div>
					</div>

<%-- 				<img class="img-responsive" src="/img/${files.storedFname}" alt=""> --%>
<!-- 					<img class="img-responsive" src="http://placehold.it/250x250" alt="" > -->

				</c:forEach>

			</c:if>
			<c:if test="${ article.howManyFiles>1}">


				<div id="carousel${article.articleNum}" class="carousel slide"
					data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">

						<c:forEach var="files" items="${article.fileList}" varStatus="fileNumStatus">
							<c:if test="${fileNumStatus.first}">
								<li data-target="#article${article.articleNum}" data-slide-to="${fileNumStatus.count-1}" class="active"></li>
							</c:if>
							<c:if test="${!fileNumStatus.first}">
								<li data-target="#article${article.articleNum}" data-slide-to="${fileNumStatus.count-1}"></li>
							</c:if>

						</c:forEach>

					</ol>

					<!-- Wrapper for slides -->
					<div class="carousel-inner" role="listbox">
						<c:forEach var="files" items="${article.fileList}"
							varStatus="fileNumStatus">
							<c:if test="${fileNumStatus.first}">
								<div class="item active img_position">
									<div class="centered"> 
										<img class="img-responsive article_img" src="/img/${files.storedFname}" alt="">
<!-- 									<img src="http://placehold.it/400x400" alt="profile"> -->
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
					<a class="left carousel-control "
						href="#carousel${article.articleNum}" role="button"
						data-slide="prev" style="background-image: none;"> <span
						class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a> <a class="right carousel-control "
						href="#carousel${article.articleNum}" role="button"
						data-slide="next" style="background-image: none;"> <span
						class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>

			</c:if>
			
		</div>
			
	
	
		<c:if test="${status.index%3==2}">
			</div>
		</c:if>
		
	</c:forEach>

</div>

</section>


