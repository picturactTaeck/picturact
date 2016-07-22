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
//	var socket = io.connect('http://pknu1.kr:3033');
	var socket = io.connect('http://127.0.0.1:3033');
	socket.emit('join', {'userId' : $("#chatDiv").attr("user")});
	
	Handlebars.registerHelper('whereAppend',function(userId, options) {
		if ($("#chatDiv").attr("user") == userId) {
			return 'right';

		} else {
			return 'left';
		}
	});
	
	$(".chatFollower").on("click",function() {
				event.preventDefault();

				loadChatArea($(this).attr("follower"));

			});

	$(document).on("click", ".chat_close", function() {

		var index = $(".chat_close").index($(this));
		$('.chat_popup').eq(index).remove()

	});

	$(document).on("click", ".sendMessage", function() {

		var toWho = $(this).attr("toWho");
		var message = $("#sendChatCon" + toWho).text();

		socket.emit('message', {'sender' : $("#chatDiv").attr("user"),'receiver' : toWho,	'message' : message});

		
		//get current time
		var date = new Date();
		var separateDate =
			dateString(date.getFullYear(),4) + '-' +
			dateString(date.getMonth() + 1, 2) + '-' +
			dateString(date.getDate(), 2) + ' ' +

			dateString(date.getHours(), 2) + ':' +
			dateString(date.getMinutes(), 2)+ ':' +
			dateString(date.getSeconds(), 2);
		
		socket.emit('message', {'sender' : $("#chatDiv").attr("user"),'receiver' : toWho,	'message' : message, date:separateDate});

		var data = {'userId' : $("#chatDiv").attr("user"),'message' : message};
		
		var source = $("#chatAppend").html();
		var template = Handlebars.compile(source);
		var html = template(data);
		$('#chat' + toWho).append(html);
		$("#sendChatCon" + toWho).text("");
	});

	socket.on('message', function(data) {
		alert("message");
		if($('#chat' + data.userId).length==0 ){
			loadChatArea(data.userId);
			
		}else{
			var source = $("#chatAppend").html();
			var template = Handlebars.compile(source);
			var html = template(data);
			$('#chat'+ data.userId).append(html);
		}
	});
	
	function loadChatArea(chatId){
		$.ajax({
			url : "/get.message",
			type : "POST",
			async : true,
			data : {
				chatId : chatId
			},
			dataType : "json",
			success : function(data) {

				var source = $("#chatArea").html();
				var template = Handlebars.compile(source);

				
				Handlebars.registerPartial('chatContentAppend', $("#chatAppend").html());

				var html = "";

				var html = template(data);
				$("#chatDiv").append(html);

			},
			error : function(xhr) {
				alert("error html = " + xhr.statusText);
				// 				function(a,b,c){
				// 					 alert('실패 a : '+ a + " b : " + b + " c : " + c);}
			}

		});
	}
	
	//get current time to String
	function dateString(date, setDate){
		
		var zero = '';
		date = date.toString();

		if (date.length < setDate) {
		for (i = 0; i < setDate - date.length; i++)
		zero += '0';
		}
		return zero + date;
	}
   });