package com.project.picturact.message.service;

import java.util.ArrayList;

import com.project.picturact.message.dto.ChatList;

public interface MessageService {

	public ArrayList<ChatList> getChatList(String userId, String chatId);

}
