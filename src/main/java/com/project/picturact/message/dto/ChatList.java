package com.project.picturact.message.dto;

public class ChatList {
	private String userId;
	private String chatContent;
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getChatContent() {
		return chatContent;
	}
	public void setChatContent(String chatContent) {
		this.chatContent = chatContent;
	}
	@Override
	public String toString() {
		return "ChatList [userId=" + userId + ", chatContent=" + chatContent + "]";
	}
	
	

}
