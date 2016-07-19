package com.project.picturact.message.dao;

import java.util.ArrayList;

import javax.inject.Inject;

import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Repository;

import com.project.picturact.message.dto.ChatList;

@Repository
public class MessageDaoImpl implements MessageDao{
	
	@Inject
	MongoTemplate mongoTemplate;
	


	@Override
	public ArrayList<ChatList> getChatList(String userId, String chatId) {
		// TODO Auto-generated method stub
		try {
//			return mongoTemplate.find
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}
	
	

}
