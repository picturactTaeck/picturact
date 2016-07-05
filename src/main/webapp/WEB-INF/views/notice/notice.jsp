<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
	
	
<div class="row">
<section class="content">

	<div class="col-md-8 col-md-offset-2">
	<h1 class="text-center">Notice</h1>
	<!-- Notice Write Button 관리자에게만 write버튼이 보이도록 하자~! (c:if문 만들기) -->
	
	<a href="#" data-toggle="modal" data-target="#noticeWriteForm" 
		class="btn btn-default pull-right">write</a></div>
	
	
	<div class="col-md-8 col-md-offset-2">
	<div class="panel panel-default">
	<div class="panel-body">

	<div class="table-responsive">
	  <table class="table table-filter">
	    <thead>
	      <tr>
			<th>No</th>
			<th>Title</th>
			<th>Writer</th>
			<th>Date</th>
	      </tr>
	    </thead>
	    <tbody>
	    
	    <!-- 한 article 당 table 2열 사용 1열은 no 제목 작성자 date // 2열은 content가 hide되어있음 -->
	    <!-- c:foreach문 사용, content div생성시 id 이름은 noticeContent${noticeNum} 이런식으로 만들예정 ㅎ-ㅎ -->
	    <!-- 1열!! -->
	      <tr>
			<td>1</td>
			<td>
		      <a data-toggle="collapse" href="#noticeContent" aria-expanded="false" aria-controls="noticeContent">
		        되랏ㅇㅂㅇ</a>
			</td>
			<td>admin id</td>
			<td>2016-07-03</td>
	      </tr>
	      
	      <!-- 2열 (content) -->
	      <tr><td colspan="4">
	      <!-- Content - Accordion형식 -->
			<div id="noticeContent" class="collapse">
				<div class="well well-large"> 
					Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry
					richardson ad squid. 3 wolf moon officia aute, non cupidatat
					skateboard dolor brunch. Food truck quinoa nesciunt laborum
					eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on
					it squid single-origin coffee nulla assumenda shoreditch et.
					Nihil anim keffiyeh helvetica, craft beer labore wes anderson
					cred nesciunt sapiente ea proident. Ad vegan excepteur butcher
					vice lomo. Leggings occaecat craft beer farm-to-table, raw
					denim aesthetic synth nesciunt you probably haven't heard of
					them accusamus labore sustainable VHS.
				</div>
			</div>
		</td></tr>
	    </tbody>
	  </table>

	<!--Paging -->
	<!-- 페이지코드 붙일 것 같음ㅇㅇ -->
	<div class="text-center">
		<ul class="pagination">
	    <li>
	      <a href="#" aria-label="Previous">
	        <span aria-hidden="true">&laquo;</span>
	      </a>
	    </li>
	    <li><a href="#">1</a></li>
	    <li><a href="#">2</a></li>
	    <li><a href="#">3</a></li>
	    <li><a href="#">4</a></li>
	    <li><a href="#">5</a></li>
	    <li>
	      <a href="#" aria-label="Next">
	        <span aria-hidden="true">&raquo;</span>
	      </a>
	    </li>
	  </ul>
	  </div>
	</div>
	
</div></div></div>
</section></div></div>
	
	
	
	<!-- Notice Write Modal (write 버튼은 관리자만 보이도록 설정) -->
	<div id="noticeWriteForm" class="modal">
		<%@ include file="notice_write.jsp" %>
	</div>
	