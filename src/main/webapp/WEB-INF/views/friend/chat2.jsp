
<script id="chatArea" type="text/x-handlebars-template" >
		<div class="chat_popup" > 
			<div class="chat_header" >
				<div class="chat_close"><img src="resources/img/chatImage/close_chat2.png" ></div>
				<div class="chat_withWho">
					<div>{{chatId}}</div>
				</div>
			</div>
			<div class="chat_content chat_scroll custom_scroll" id="chat{{chatId}}" >
	
				
			</div>
			<div class="chat_footer">
				<div id="sendChatCon{{chatId}}" contentEditable="true" style=""></div> 
				<input type="button" class="btn btn-default btn-sm sendMessage" value="send" toWho="{{chatId}}">
			</div>
		</div>
</script>




<script id="chatAppend" type="text/x-handlebars-template" >
	<div class="row" style="margin:5px;">
				
		<div class="" style="float:{{whereAppend sender}};max-width: 190px; text-align:{{whereAppend sender}}">
			<div style="font-size: 13; ">
				{{sender}}
			</div>
			<div style="float:{{whereAppend sender}};width:auto;border: 1px solid rgb(170,170,170); border-radius:0.5em; padding : 2px; font-size:12;word-break:break-all;">
				{{message}}
			</div>
		</div>
	</div>
	
</script>
