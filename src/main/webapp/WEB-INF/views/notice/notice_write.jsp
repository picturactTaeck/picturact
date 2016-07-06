<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="modal-dialog">
	<div class="modal-content">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			<h4 class="text-center">Write</h4>
		</div>
		<div class="modal-body">

			<div class="text-center">
				<form id="writeNotice" action="write.notice" method="post" class="form-horizontal">
					<fieldset>
						<!-- test -->
						<input type="hidden" name="sessionId" value="${sessionId}">
						<div class="form-group">
							<label class="col-lg-2 control-label">Writer</label>
							<div class="col-lg-10" >${sessionId}</div>
						</div>

						<div class="form-group">
							<label class="col-lg-2 control-label">Title</label>
							<div class="col-lg-10">
								<input type="text" class="form-control" name="title" id="title">
							</div>
						</div>

						<div class="form-group">
							<div class="col-lg-12">
								<textarea class="form-control" rows="6" name="content" id="content"></textarea>
							</div>
						</div>



						<div class="form-group">
							<div class="col-lg-12">
								<button type="reset" class="btn btn-default "
									data-dismiss="modal" aria-hidden="true">Cancel</button>
								<button type="submit" class="btn btn-default">Submit</button>
							</div>
						</div>
					</fieldset>
				</form>
			</div>
		</div>
	</div>
</div>