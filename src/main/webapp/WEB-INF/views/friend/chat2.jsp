
<script id="chatArea" type="text/x-handlebars-template" >
		<div class="chat_popup" > 
			<div class="chat_header" >
				<div class="chat_close"><img src="resources/img/chatImage/close_chat2.png" ></div>
				<div class="chat_withWho">
					<div>{{chatId}}</div>
				</div>
			</div>
			<div class="chat_content" id="chat{{chatId}}">
				
			</div>
			<div class="chat_footer">
				<div id="sendChatCon{{chatId}}" contentEditable="true" style=""></div> 
				<input type="button" class="btn btn-default btn-sm sendMessage" value="send" toWho="{{chatId}}">
			</div>
		</div>
</script>




<script id="chatAppend" type="text/x-handlebars-template" >
	<div class="row" style="margin:0px">
				
		<div class="container" style="float:{{whereAppend userId}};max-width: 190px; ">
			<div style="font-size: 13; text-align:{{whereAppend userId}}">
				{{userId}}
			</div>
			<div style="border: 1px solid rgb(170,170,170); border-radius:0.5em; padding : 2px; font-size:12; white-space:nomal;word-break:break-all;">
				{{message}}
			</div>
		</div>
	</div>
	
</script>
