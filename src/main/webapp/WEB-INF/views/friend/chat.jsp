<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="resources/css/chat.css" />

<script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
<script src="http://localhost:8801/socket.io/socket.io.js"></script>
<script>
$(document).ready(function(){
	alert("open");
	var socket = io.connect('http://localhost:8801');
	var employNum = 'test_id2';  //client2은 test_id2 이라는 아이디로 등록합니다.
	 socket.emit('conn', employNum);  //conn이라는 key로 아이디를 전송합니다.
	 
	 socket.on('message', function(data){    //메세지를 받으면 console에 찍습니다.
		console.log(data);
	 	var recieveMsg = data;
	 	
	 });
});
</script>
</head>
<body>


<div class="popup-box chat-popup" id="qnimate">
		<div class="popup-head">
			<div class="popup-head-left pull-left">
				<img src="jpg" alt="iamgurdeeposahan"> Name
			</div>
			<div class="popup-head-right pull-right">
				<div class="btn-group">
					<button class="chat-header-button" data-toggle="dropdown" type="button" aria-expanded="false">
						<i class="glyphicon glyphicon-cog"></i>
					</button>
					<ul role="menu" class="dropdown-menu pull-right">
						<li><a href="#">Media</a></li>
						<li><a href="#">Block</a></li>
						<li><a href="#">Clear Chat</a></li>
						<li><a href="#">Email Chat</a></li>
					</ul>
				</div>

				<button data-widget="remove" id="removeClass"
					class="chat-header-button pull-right" type="button">
					<i class="glyphicon glyphicon-off"></i>
				</button>
			</div>
		</div>
		
		
		<div class="popup-messages">

			<div class="direct-chat-messages">


				<div class="chat-box-single-line">
					<abbr class="timestamp">October 8th, 2015</abbr>
				</div>

			</div>

		</div>
		<div class="popup-messages-footer">
		<textarea id="status_message" placeholder="Type a message..." rows="10" cols="40" name="message"></textarea>
		<div class="btn-footer">
		<button class="bg_none"><i class="glyphicon glyphicon-film"></i></button>
		<button class="bg_none"><i class="glyphicon glyphicon-camera"></i></button>
        <button class="bg_none"><i class="glyphicon glyphicon-paperclip"></i></button>
		<button class="bg_none pull-right"><i class="glyphicon glyphicon-thumbs-up"></i> </button>
		</div>
		</div>
	  </div>
	  
<!-- js files & script -->    
<script src="resources/js/chat.js"></script>
</body>
</html>