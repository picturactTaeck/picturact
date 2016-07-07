//open chat
//$(document).ready(function(){
//$(".chatFollower").on("click",function () {
//          $('#chatBox').addClass('popup-box-on');
//            });
//
//            $("#removeClass").click(function () {
//            	$('#chatBox').removeClass('popup-box-on');
//            });
//
//
////when opened mainPage, also start this function. 
//	$(function(){
//		 var socket = io.connect('http://210.119.12.240:3033');
//		 
//		 
//		 var employNum = $("#sessionId").val();
//		 socket.emit('conn', employNum);  //conn이라는 key로 아이디를 전송합니다.
//		 
//		 socket.emit('toMessage', { toEmployNum : 'test_id2', message : 'test112' });   //test_id2라는 아이디를 가진사람에게 메세지를 전송합니다.
//
//		 socket.on('message', function(data){    //메세지를 받으면 console에 찍습니다.
//			console.log(data);
//		 });
//		});
//});


$(document).ready(function(){
   var socket = io.connect('http://localhost:3033');
//   $('#enter').click(function(){
//	  var userid = document.getElementById('userid');
//	  var roomname = document.getElementById('roomname');
	  socket.emit('join',{'userid':'master', 'roomname':'testnodejsserver'});
//	  document.getElementById('log').style.display='none';
//	  document.getElementById('chat').style.display='block';
//   });
   
   socket.on('join',function(data){
	   
//	   alert(data);
	   $('#textappend').append('<dd style="margin:0px;>"'+data+'님이 접속하셨습니다.</dd>');
	   
	   
   });
   
 $(".chatFollower").on("click",function () {
 $('#chatBox').addClass('popup-box-on');
   });

   $("#removeClass").click(function () {
   	$('#chatBox').removeClass('popup-box-on');
   });
   
   $('#btn').click(function(){
    var message = $('#text').val();
    socket.emit('message',message);
  });
   
   socket.on('message',function(data){
	   $('#textappend').append('<dd style=margin:0px;>'+data+'</dd>');
	   $('#text').val('');
	   });
   });