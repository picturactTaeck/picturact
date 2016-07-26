$(document).ready(function(){
//	var socket = io.connect('http://pknu1.kr:3033');
	var socket = io.connect('http://210.119.12.240:3033');
	socket.emit('join', {'userId' : $("#chatDiv").attr("user")});
	
	Handlebars.registerHelper('whereAppend',function(sender, options) {
		if ($("#chatDiv").attr("user") == sender) {
			return 'right';

		} else {
			return 'left';
		}
	});
	
	$(".chatFollower").on("click",function() {
				event.preventDefault();
				if($('#chat' + $(this).attr("follower")).length==0 ){
					loadChatArea($(this).attr("follower"));
				}else{
					$("#sendChatCon" + $(this).attr("follower")).focus();
				}

			});

	$(document).on("click", ".chat_close", function() {

		var index = $(".chat_close").index($(this));
		$('.chat_popup').eq(index).remove()

	});

	$(document).on("click", ".sendMessage", function() {

		var toWho = $(this).attr("toWho");
		var message = $("#sendChatCon" + toWho).text();



		
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

		var data = {'sender' : $("#chatDiv").attr("user"),'message' : message};
		
		var source = $("#chatAppend").html();
		var template = Handlebars.compile(source);
		var html = template(data);
		$('#chat' + toWho).append(html);
		$("#sendChatCon" + toWho).text("");
	});

	socket.on('message', function(data) {

		if($('#chat' + data.sender).length==0 ){
			loadChatArea(data.sender);
			
		}else{
			var source = $("#chatAppend").html();
			var template = Handlebars.compile(source);
			var html = template(data);
			$('#chat'+ data.sender).append(html);
		}
	});
	
	function loadChatArea(chatId){
		var chat = {'chatId':chatId};
		var source = $("#chatArea").html();
		var template = Handlebars.compile(source);
		var html = template(chat);
		$("#chatDiv").append(html);
		loadChatContent(chatId);
	}
	

	
	function loadChatContent(chatId){
		$.ajax({
			url : "/get.message",
			type : "POST",
			async : true,
			data : {
				chatId : chatId
			},
			dataType : "json",
			success : function(data) {
				var source = $("#chatAppend").html();
				var template = Handlebars.compile(source);
				var html = "";
				$.each(data.chatList.content, function(){
					html += template(this);
				});

				$('#chat'+ data.chatId).append(html);

			},
			error : function(xhr) {
				alert("error html = " + xhr.statusText);

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