package com.project.picturact.message.dao;

import java.util.List;

import javax.inject.Inject;

import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

import com.project.picturact.message.dto.ChatList;

@Repository
public class MessageDaoImpl implements MessageDao{
	
	@Inject
	MongoTemplate mongoTemplate;
	


	@Override
	public ChatList getChatList(String userId, String chatId) {
		// TODO Auto-generated method stub
		try {
//			return mongoTemplate.find

//			System.out.println("mongo db connect?");
			String collectionName = null;
			if(checkChar(userId)){
				collectionName="chat_"+userId;
			}else{
				collectionName="chat_"+userId+"s";
			}
		
			
			List<ChatList> getChatList= mongoTemplate.find(new Query(Criteria.where("who").is(chatId)),  ChatList.class, collectionName);

			return 	getChatList.get(0);
//			return null;

			
			
		} catch (Exception e) {
			// TODO: handle exception
			return null;
		}

	}
	
	public boolean checkChar(String userId){
		

		    try {
		        Integer.parseInt( userId.substring(userId.length()-2));
		        return true;
		    } catch (NumberFormatException e) {
		        return false;


	}
	
	

	}
}
