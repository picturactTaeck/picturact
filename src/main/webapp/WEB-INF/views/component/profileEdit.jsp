<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<div class="container">
<div class="row">
<div class="col-md-8 col-md-offset-2">
<form class="form-horizontal">
  <fieldset>
    <legend>${member}</legend>
    <div class="form-group">
    	<div class="col-lg-3">
    	<c:if test="${memberDto.profileImg == null}">
    	<div class="post_warp_filebutton">
			<input type="file" id="modify_profileImg" name="modify_profileImg" accept="image/*">
		</div>
    	</c:if>
    	
    	<c:if test="${memberDto.profileImg != null}">
	 		<div class="img_position">
				<div class="centered"> 
					<img class="img-responsive article_img" src="http://placehold.it/150x150" alt="">
	
				</div>
			</div>
		</c:if>
    	</div>
    	
    	<div class="col-lg-9">
    	  <div class="form-group">
    		<label class="col-lg-2 control-label">Name</label>
	      	<div class="col-lg-10">
	        	<input type="text" class="form-control" id="modify_username" placeholder="${memberDto.username}">
	      	</div>
	      </div>
	      <div class="form-group">
	      	<label class="col-lg-2 control-label">Nickname</label>
		    <div class="col-lg-10">
		      <input type="text" class="form-control" id="modify_nickname" placeholder="${memberDto.nickname}">
		    </div>
		   </div>
    	</div>
    	
    </div>
    
    <div class="form-group">
      <label class="col-lg-2 control-label">E-mail</label>
      <div class="col-lg-10">
        <input type="text" class="form-control" id="modify_email" placeholder="${memberDto.email}">
      </div>
    </div>
    <div class="form-group">
      <label class="col-lg-2 control-label">Profile Message</label>
      <div class="col-lg-10">
        <textarea class="form-control" rows="3" id="modify_profile_message"></textarea>
      </div>
    </div>
    
    <div class="form-group">
      <div class="col-lg-12 text-center">
        <input type="submit" class="btn btn-default" value="Modify">
        <input type="button" id="modify_password" value="Change P.W" class="btn btn-default">
      </div>
    </div>
  </fieldset>
</form>
</div>
</div>
</div>
</body>
</html>