package com.project.picturact.component.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.picturact.component.service.ComponentService;

@Controller
public class ArticleComponentController {
	@Autowired
	ComponentService componentService;
	

	ModelAndView mav;
	
	
	@RequestMapping(value="/")
	public ModelAndView mainPage(HttpSession session){
		String userId = (String) session.getAttribute("userId");
		mav = new ModelAndView();
		userId = "master";
	
		
//		get main page article service(userId -> log in id)
		mav.addObject("articleList", componentService.getMainArticle(userId));
		
		mav.addObject("whatPost", "1");
		mav.setViewName("mainPage");
		
		return mav;
	}
	
	@RequestMapping(value="/{userId}")
	public ModelAndView personPage(@PathVariable String userId,HttpSession session){
//		String id = (String) session.getAttribute("id");

		mav.addObject("whatPost", "2");
		
		mav.addObject("articleList", componentService.getPersonalArticle(userId));
		
		mav.setViewName("mainPage");
		return mav;
	}
	
	

}
