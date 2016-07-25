package com.project.picturact.message.dto;

import java.util.ArrayList;


public class ChatList {
	private String id;
	private String who;
	private ArrayList<ChatContent> content;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getWho() {
		return who;
	}
	public void setWho(String who) {
		this.who = who;
	}
	public ArrayList<ChatContent> getContent() {
		return content;
	}
	public void setContent(ArrayList<ChatContent> content) {
		this.content = content;
	}
	@Override
	public String toString() {
		return "ChatList [id=" + id + ", who=" + who + ", content=" + content + "]";
	}

	

	
	
	


	
	
	
	
	
	




}
