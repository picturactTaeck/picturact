<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- test -->
<input type="hidden" id="sessionId" name="sessionId" value="${sessionId}">
<input type="hidden" id="auth" name="auth" value="${auth}">
<input type="hidden" id="pageNum" value="${pageNum}">

<div class="container">
	
	
<div class="row">
<section class="content">

	<div class="col-md-8 col-md-offset-2">
	<h1 class="text-center">Notice</h1>
	
	<div class="pull-right">
		<ul class="nav navbar-nav">
		
			<!-- Only show, when auth is null -->
			<c:if test="${auth==null}">
			<li>
			<!-- QnA Button -->
			<a href="#" data-toggle="modal" data-target="#qnaMailForm" 
				class="btn btn-default">Q&A</a></li></c:if>
			
			
			<c:if test="${auth=='Y'}">
			<li>
			<!-- Only Admin can use Notice Write Button (use c:if) -->
			<a href="#" data-toggle="modal" data-target="#noticeWriteForm" 
				class="btn btn-default">write</a></li></c:if>
		</ul>
	</div>
	</div>
	
	
	<div class="col-md-8 col-md-offset-2">
	<div class="panel panel-default">
	<div class="panel-body">

	<div class="table-responsive">
	  <table class="table table-filter" id="noticeTable">
	    <thead>
	      <tr>
			<th>No</th>
			<th>Title</th>
			<th>Writer</th>
			<th>Date</th>
	      </tr>
	    </thead>
	    <tbody>
	    
	    <!-- Each article has 2 rows, first row is used 'no title id date'. -->
	    <!-- Second row is used content, and it is hided first. If user click title, it showed..  -->
	    <!-- It will be used 'c:foreach'. And when content is made, div's id is noticeContent${noticeNum} kk..  -->
	    <!-- hate English.. -->
	    
	    <c:forEach var="notice" items="${noticeList}">
	    <!-- First Row -->
	      <tr>
			<td>${notice.noticeNum}</td>
			<td>
		      <a data-toggle="collapse" href="#noticeContent${notice.noticeNum}" 
		      aria-expanded="false" aria-controls="noticeContent${notice.noticeNum}">
		        ${notice.title}</a>
			</td>
			<td>${notice.userId}</td>
			<td>${notice.writeDate}</td>
	      </tr>
	      
	      <!-- Second Row (content) -->
	      <tr><td colspan="4" style="padding:0px;">
	      <!-- Content - use Accordion -->
			<div id="noticeContent${notice.noticeNum}" class="collapse">
				<div class="well well-large"> 
					${notice.content}
				</div>
			</div>
		</td></tr>
		</c:forEach>
	    </tbody>
	  </table>

	<!--Paging -->
	<!-- It will be used pageCode -->
	<div class="text-center">
		${pageCode}
	  </div>
	</div>
	
</div></div></div>
</section></div></div>
	
	
	
	<!-- Notice Write Modal -->
	<div id="noticeWriteForm" class="modal">
		<%@ include file="notice_write.jsp" %>
	</div>
	
	<!-- Q&A E-mail Write Modal -->
	<div id="qnaMailForm" class="modal">
		<%@ include file="qna_mail.jsp" %>
	</div>
	
	