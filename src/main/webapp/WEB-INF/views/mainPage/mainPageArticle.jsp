
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<section>
<c:forEach var="article" items="${articleList}">
	<div class="container main_article ">
		<!--profile(pictur&user's id) -->
		<div class="row article_profile ">
			<img src="http://placehold.it/40x40" alt="profile"><a href="/${article.userId}">${article.userId}</a>
		</div>

		<div class="">
<!-- 				<img class="img-responsive" src="http://placehold.it/400x400" alt=""> -->
<%-- 					<img class="img-responsive" src="/img/${files.storedFname}" alt=""> --%>
			<c:if test="${ article.howManyFiles==1}">
				<c:forEach var="files" items="${article.fileList}">
<%-- 					<img class="img-responsive" src="/img/${files.storedFname}" alt=""> --%>
					<img src="http://placehold.it/400x400" alt="profile">
				</c:forEach>

			</c:if>

			<c:if test="${ article.howManyFiles>1}">
				<div id="main${article.articleNum}" class="carousel slide" data-ride="carousel">
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
					<div class="carousel-inner" role="listbox">
						<c:forEach var="files" items="${article.fileList}"
							varStatus="fileNumStatus">
							<c:if test="${fileNumStatus.first}">
								<div class="item active">

<%-- 									<img class="img-responsive" src="/img/${files.storedFname}" alt=""> --%>
										<img src="http://placehold.it/400x400" alt="profile" >
									<div class="carousel-caption"></div>
								</div>
							</c:if>
							<c:if test="${!fileNumStatus.first}">
								<div class="item">

<%-- 										<img class="img-responsive" src="/img/${files.storedFname}" alt=""> --%>
										<img src="http://placehold.it/400x400" alt="profile" >

									<div class="carousel-caption"></div>
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
				
		


		</div>
		<div class="article_content">test</div>
			
		<div class="main_article_reply"> reply</div>
	</div>
</c:forEach>
</section>




<%-- <c:forEach var="article" items="${articleList}"> --%>
<!-- 	<div class="container post_img_box_news news_margin"> -->

<!-- 		<div class="row "> -->
<!-- 			<div class="col-lg-12"> -->
<!-- 				<h2 class="page-header border_bottom_blue blue_color"> -->
<%-- 					<a href="/${article.userId}">${article.userId}</a> --%>

<!-- 				</h2> -->
<!-- 			</div> -->
<!-- 		</div> -->


<!-- 		<div class="post_img"> -->
<%-- 			<c:if test="${ article.howManyFiles==1}"> --%>
<%-- 				<c:forEach var="files" items="${article.fileList}"> --%>

<%-- 					<a href="/img/${files.storedFname}"> <img --%>
<%-- 						class="img-responsive" src="/img/${files.storedFname}" alt=""> --%>

<!-- 					</a> -->
<%-- 				</c:forEach> --%>

<%-- 				<p class="post_img">${article.content}</p> --%>

<%-- 			</c:if> --%>

<%-- 			<c:if test="${ article.howManyFiles>1}"> --%>


<%-- 				<div id="abc${article.articleNum}" class="carousel slide" --%>
<!-- 					data-ride="carousel"> -->
<!-- 					Indicators -->
<!-- 					<ol class="carousel-indicators"> -->

<%-- 						<c:forEach var="files" items="${article.fileList}" --%>
<%-- 							varStatus="fileNumStatus"> --%>
<%-- 							<c:if test="${fileNumStatus.first}"> --%>
<%-- 								<li data-target="#abc${article.articleNum}" --%>
<%-- 									data-slide-to="${fileNumStatus.count-1}" class="active"></li> --%>
<%-- 							</c:if> --%>
<%-- 							<c:if test="${!fileNumStatus.first}"> --%>
<%-- 								<li data-target="#abc${article.articleNum}" --%>
<%-- 									data-slide-to="${fileNumStatus.count-1}"></li> --%>
<%-- 							</c:if> --%>

<%-- 						</c:forEach> --%>

<!-- 					</ol> -->

<!-- 					Wrapper for slides -->
<!-- 					<div class="carousel-inner" role="listbox"> -->
<%-- 						<c:forEach var="files" items="${article.fileList}" --%>
<%-- 							varStatus="fileNumStatus"> --%>
<%-- 							<c:if test="${fileNumStatus.first}"> --%>
<!-- 								<div class="item active"> -->

<%-- 									<a href="/img/${files.storedFname}"> <img --%>
<%-- 										class="img-responsive" src="/img/${files.storedFname}" alt=""> --%>

<!-- 									</a> -->
<!-- 									<div class="carousel-caption"></div> -->
<!-- 								</div> -->
<%-- 							</c:if> --%>
<%-- 							<c:if test="${!fileNumStatus.first}"> --%>
<!-- 								<div class="item"> -->
<%-- 									<a href="/img/${files.storedFname}"> <img --%>
<%-- 										class="img-responsive" src="/img/${files.storedFname}" alt=""> --%>

<!-- 									</a> -->
<!-- 									<div class="carousel-caption"></div> -->
<!-- 								</div> -->

<%-- 							</c:if> --%>

<%-- 						</c:forEach> --%>




<!-- 					</div> -->

<!-- 					Controls -->
<%-- 					<a class="left carousel-control " href="#abc${article.articleNum}" --%>
<!-- 						role="button" data-slide="prev" style="background-image: none;"> -->
<!-- 						<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> -->
<!-- 						<span class="sr-only">Previous</span> -->
<!-- 					</a> <a class="right carousel-control " -->
<%-- 						href="#abc${article.articleNum}" role="button" data-slide="next" --%>
<!-- 						style="background-image: none;"> <span -->
<!-- 						class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> -->
<!-- 						<span class="sr-only">Next</span> -->
<!-- 					</a> -->
<!-- 				</div> -->



<%-- 			</c:if> --%>
<!-- 			<br> -->
<!-- 			<div class="btn-toolbar"> -->
<!-- 				<div class="btn-group"> -->
<!-- 					<a href="#" class="btn btn-inverse"><i -->
<!-- 						class="glyphicon glyphicon-thumbs-up" style="color: #f0ad4e"></i></a> -->
<!-- 					<a href="#" class="btn btn-inverse"><i -->
<!-- 						class="glyphicon glyphicon-pencil" style="color: #f0ad4e"></i></a> -->

<!-- 				</div> -->
<!-- 				<div class="btn-group"> -->
<!-- 					<a class="btn btn-inverse" -->
<%-- 						onclick="deleteArticle(${article.articleNum});"><i --%>
<!-- 						class="glyphicon glyphicon-trash" style="color: #f0ad4e;"></i></a> -->
<!-- 				</div> -->
<!-- 			</div> -->


<!-- 		</div> -->
<!-- 	</div> -->

<%-- </c:forEach> --%>