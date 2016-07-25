<section>
<!-- 모달 팝업 -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
		<button type="button" class="close" data-dismiss="modal"><img aria-hidden="true" style="width: 20px; height:20px;" src="resources/img/chatImage/close_chat.png"><span class="sr-only">Close</span></button>
		<h4 class="modal-title" id="myModalLabel">Your Location</h4>
	      </div>
	      <div class="modal-body">
<!-- 			Location : <input type="text" placeholder="Where you at..?"> -->
			Location :<%@ include file="google.jsp"%>
<%-- 			Location : <jsp:include page="map/google.jsp"></jsp:include> --%>
	      </div>
	      <div class="modal-footer">
		<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
<!-- 		<button type="button" class="btn btn-primary">Location Conf.</button> -->
	      </div>
	    </div>
	  </div>
	</div>
</section>