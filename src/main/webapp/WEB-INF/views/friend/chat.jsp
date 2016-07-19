<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="popup-box chat-popup" id="chatBox">
		<div class="popup-head">
			<div class="popup-head-left pull-left"> Name
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
	  