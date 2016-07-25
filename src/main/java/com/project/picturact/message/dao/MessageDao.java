package com.project.picturact.message.dao;

import com.project.picturact.message.dto.ChatList;

public interface MessageDao {

	public ChatList getChatList(String userId, String chatId);

}
