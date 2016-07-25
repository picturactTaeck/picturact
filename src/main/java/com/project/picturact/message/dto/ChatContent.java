package com.project.picturact.message.dto;

public class ChatContent{
	private String sender;
	private String message;
	private String date;
	public String getSender() {
		return sender;
	}
	public void setSender(String sender) {
		this.sender = sender;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "chatContent [sender=" + sender + ", message=" + message + ", date=" + date + "]";
	}
	
	
	

}