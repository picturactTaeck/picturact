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
   var socket = io.connect('http://210.119.12.240:3033');
//   $('#enter').click(function(){
//	  var userid = document.getElementById('userid');
//	  var roomname = document.getElementById('roomname');
	  socket.emit('join',{'userid':'master', 'roomname':'testnodejsserver'});
//	  document.getElementById('log').style.display='none';
//	  document.getElementById('chat').style.display='block';
//   });
   
   socket.on('join',function(data){
	   
	   
   });
   
 $(".chatFollower").on("click",function () {
	 alert("chat");
	 
	 $.ajax({
		 url:"get.message",
		 data:{
			 chatId:$(this).attr("follower")
		 },
		 dataType:"json",
		 success: function (data){
			 
			var source=$("#chatArea").html();
			var template = Handlebars.compile(source);



			Handlebars.registerHelper('isOne', function(howManyFiles, options) {
				 if(howManyFiles==1){
					 return options.fn(this);
				 }else{
					 return options.inverse(this);
				 }

			 });


			var html = "";


			var html = template(data);
			$("#chatDiv").append(html);


		 },
		 error: function(a,b,c){
			 alert('실패 a : '+ a + " b : " + b + " c : " + c);
		 }

		 
	 });
	 
	 
	

   });


   $(document).on("click",".chat_close",function(){
		
		var index = $(".chat_close").index($(this));
		$('.chat_popup').eq(index).remove()

		
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