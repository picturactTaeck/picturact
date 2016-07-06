//open chat
$(document).ready(function(){
$(".chatFollower").on("click",function () {
          $('#chatBox').addClass('popup-box-on');
            });

            $("#removeClass").click(function () {
            	$('#chatBox').removeClass('popup-box-on');
            });


//when opened mainPage, also start this function. 
	$(function(){
		 var socket = io.connect('http://localhost:8801');
		 
		 
		 var employNum = $("#sessionId").val();
		 socket.emit('conn', employNum);  //conn이라는 key로 아이디를 전송합니다.
		 
		 socket.emit('toMessage', { toEmployNum : 'test_id2', message : 'test112' });   //test_id2라는 아이디를 가진사람에게 메세지를 전송합니다.

		 socket.on('message', function(data){    //메세지를 받으면 console에 찍습니다.
			console.log(data);
		 });
		});
});