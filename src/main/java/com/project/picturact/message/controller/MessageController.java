package com.project.picturact.message.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.project.picturact.message.service.MessageService;

@Controller
public class MessageController {
	@Autowired
	MessageService messageService;
	
	ModelAndView mav;
	
	
	@RequestMapping(value="/get.message")
	@ResponseBody
	public ModelAndView getMessage(String chatId, HttpSession session){
		String userId = (String) session.getAttribute("userId");
		mav = new ModelAndView();
		mav.addObject("chatId", chatId);
		mav.addObject("chatList", messageService.getChatList(userId, chatId));
		mav.setViewName("JSON");

		return mav;
		
	}
	
	
	
	

}
