package com.project.picturact.component.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.project.picturact.component.service.ComponentService;

@Controller
public class ComponentController {
	@Autowired
	ComponentService componentService;

	ModelAndView mav;
	
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	@ResponseBody
	public ModelAndView mainPage(HttpSession session){
		String userId = (String) session.getAttribute("userId");
		mav = new ModelAndView();

//		System.out.println("mainPage");

		
//		get main page article service(userId -> log in id)
//		mav.addObject("articleList", componentService.getMainArticle(userId));
		
		mav.addObject("followList",componentService.getFollowList(userId));
		mav.addObject("whatPost", WhatPost.MAIN_PAGE);
		mav.setViewName("mainPage");
		
		return mav;
	}
	
	@RequestMapping(value="/favicon")
	public void favicon(){
	
	}
	
	
	@RequestMapping(value="/{pageId}")
	public ModelAndView personPage(@PathVariable String pageId,HttpSession session){
		String userId = (String) session.getAttribute("userId");
		mav = new ModelAndView();
		mav.addObject("profileInfo", componentService.getProfile(pageId));
		mav.addObject("whatPost", WhatPost.PERSONAL_PAGE);
		mav.addObject("follow",componentService.getFollowState(pageId,userId));
		mav.addObject("whosPage",pageId);
		mav.setViewName("mainPage");
		return mav;
	}
	
	
	
	@RequestMapping(value="/notice")
	public ModelAndView noticePage(HttpSession session){
		String id = (String) session.getAttribute("id");
		mav = new ModelAndView();

		mav.addObject("whatPost", WhatPost.NOTICE);
		
		mav.setViewName("mainPage");
		return mav;
	}
	
	@RequestMapping(value="/editInfo")
	public ModelAndView editPage(HttpSession session){
		mav = new ModelAndView();

		mav.addObject("whatPost", WhatPost.EDIT_PAGE);
		mav.addObject("userId", session.getAttribute("id"));
		mav.setViewName("redirect:/edit.member");
		return mav;
	}

}
