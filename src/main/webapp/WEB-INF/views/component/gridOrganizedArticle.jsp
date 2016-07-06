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


















<%-- <c:forEach var="article" items="${articleList}" varStatus="status"> --%>

<%-- 	<c:if test="${status.index%3==0}"> --%>
<!-- 		<div class="container pesonal_max_width"> -->
<%-- 	</c:if> --%>
<!-- 	<div -->
<!-- 		class="col-xs-4 portfolio-item post_img_box_personal post_img_padding" -->
<%-- 		id="${article.articleNum}" name="articles"> --%>

<!-- 		<div class="post_img"> -->



<%-- 			<c:if test="${ article.howManyFiles==1}"> --%>
<%-- 				<c:forEach var="files" items="${article.fileList}"> --%>

<%-- 					<a href="/img/${files.storedFname}"> <img --%>
<%-- 						class="img-responsive" src="/img/${files.storedFname}" alt="" --%>
<!-- 						width="300px" height="300px"> -->

<!-- 					</a> -->

<%-- 				</c:forEach> --%>

<%-- 				<p class="post_img">${article.content}</p> --%>
<%-- 			</c:if> --%>



<%-- 			<c:if test="${ article.howManyFiles>1}"> --%>


<%-- 				<div id="carousel${article.articleNum}" class="carousel slide" --%>
<!-- 					data-ride="carousel"> -->
<!-- 					Indicators -->
<!-- 					<ol class="carousel-indicators"> -->

<%-- 						<c:forEach var="files" items="${article.fileList}" --%>
<%-- 							varStatus="fileNumStatus"> --%>
<%-- 							<c:if test="${fileNumStatus.first}"> --%>
<%-- 								<li data-target="#article${article.articleNum}" --%>
<%-- 									data-slide-to="${fileNumStatus.count-1}" class="active"></li> --%>
<%-- 							</c:if> --%>
<%-- 							<c:if test="${!fileNumStatus.first}"> --%>
<%-- 								<li data-target="#article${article.articleNum}" --%>
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
<%-- 										class="img-responsive" src="/img/${files.storedFname}" alt="" --%>
<!-- 										width="300px" height="300px"> -->

<!-- 									</a> -->
<!-- 									<div class="carousel-caption"></div> -->
<!-- 								</div> -->
<%-- 							</c:if> --%>
<%-- 							<c:if test="${!fileNumStatus.first}"> --%>
<!-- 								<div class="item"> -->
<%-- 									<a href="/img/${files.storedFname}"> <img --%>
<%-- 										class="img-responsive" src="/img/${files.storedFname}" alt="" --%>
<!-- 										width="300px" height="300px"> -->

<!-- 									</a> -->
<!-- 									<div class="carousel-caption"></div> -->
<!-- 								</div> -->

<%-- 							</c:if> --%>

<%-- 						</c:forEach> --%>




<!-- 					</div> -->

<!-- 					Controls -->
<!-- 					<a class="left carousel-control " -->
<%-- 						href="#carousel${article.articleNum}" role="button" --%>
<!-- 						data-slide="prev" style="background-image: none;"> <span -->
<!-- 						class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> -->
<!-- 						<span class="sr-only">Previous</span> -->
<!-- 					</a> <a class="right carousel-control " -->
<%-- 						href="#carousel${article.articleNum}" role="button" --%>
<!-- 						data-slide="next" style="background-image: none;"> <span -->
<!-- 						class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> -->
<!-- 						<span class="sr-only">Next</span> -->
<!-- 					</a> -->
<!-- 				</div> -->


<%-- 				<p class="post_img">${article.content}</p> --%>
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




<%-- 	<c:if test="${status.index%3==2}"> --%>
<!-- 		</div> -->

<%-- 	</c:if> --%>

<%-- 	</c:forEach> --%>
<!-- </div> -->
