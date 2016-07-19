package com.project.picturact.message.dao;

import java.util.ArrayList;

import com.project.picturact.message.dto.ChatList;

public interface MessageDao {

	public ArrayList<ChatList> getChatList(String userId, String chatId);

}
