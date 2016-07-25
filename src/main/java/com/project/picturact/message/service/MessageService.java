package com.project.picturact.message.service;

import com.project.picturact.message.dto.ChatList;

public interface MessageService {

	public ChatList getChatList(String userId, String chatId);

}
