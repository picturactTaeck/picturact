package com.project.picturact.follow.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.picturact.follow.service.FollowService;

@Controller
public class FollowController {
	
	@Autowired
	FollowService followService;
	
	@RequestMapping(value="/changeState.follow")
	public int changeFollowState(String pageId, int follow,HttpSession session){
		String userId = (String) session.getAttribute("id");
		
		userId="master";
		
		followService.chageFollowState(pageId, userId, follow);
		
		return 0;
		
	}
	

}
