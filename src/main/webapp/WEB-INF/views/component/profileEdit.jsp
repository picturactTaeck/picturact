<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<div class="container">
<div class="row">
<div class="col-md-8 col-md-offset-2">
<form class="form-horizontal" action="/editInfo.member" id="modify" method="post" enctype="multipart/form-data" >
  <fieldset>
    <legend>Member Information - ${member.userId}</legend>
    <div class="form-group ">
    	<div class="col-sm-3">
    	<input type="hidden" name="userId" value="${member.userId}">
    	<input type="hidden" id="modify_profileImg" name="profileImg" value="${member.profileImg}">
		
		<input type="file" id="uploadProfile" name="newProfile" style="display:none" accept="images/*">
		<div id="insert_profileImg" class="img_position" >
			<div class="centered">
				<img class="mg-responsive article_img" id="show_profile" src="${member.profileImg}" alt="" >
			</div>
		</div>
		
    	</div>
    	
    	<div class="col-sm-9">
    	  <div class="form-group">
    		<label class="col-lg-2 control-label">Name</label>
	      	<div class="col-lg-10">
	        	<input type="text" class="form-control" id="modify_username" name="username" value="${member.username}">
	      	</div>
	      </div>
	      <div class="form-group">
	      	<label class="col-lg-2 control-label">Nickname</label>
		    <div class="col-lg-10">
		      <input type="text" class="form-control" id="modify_nickname" name="nickname" value="${member.nickname}">
		    </div>
		   </div>
    	</div>
    </div>
    
    <div class="form-group">
      <label class="col-lg-2 control-label">E-mail</label>
      <div class="col-lg-10">
        <input type="text" class="form-control" id="modify_email" name="email" value="${member.email}">
      </div>
    </div>
    <div class="form-group">
      <label class="col-lg-2 control-label">Profile Message</label>
      <div class="col-lg-10">
        <textarea class="form-control" rows="3" id="modify_profile_message" name="profileMessage" value="${member.profileMessage}"></textarea>
        
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