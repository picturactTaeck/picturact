package com.project.picturact.message.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.project.picturact.message.dao.MessageDao;
import com.project.picturact.message.dto.ChatList;

@Service
public class MessageServiceImpl implements MessageService {
	@Inject
	private MessageDao messageDao;
	


	@Override
	public ChatList getChatList(String userId, String chatId) {
		// TODO Auto-generated method stub
		return messageDao.getChatList(userId, chatId);
//		return memberRepository.
//		return null;
	}
	
	

}
