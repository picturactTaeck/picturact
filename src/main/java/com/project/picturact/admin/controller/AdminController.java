package com.project.picturact.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.picturact.admin.dto.NoticeDto;
import com.project.picturact.admin.service.NoticeService;
import com.project.picturact.component.controller.WhatPost;

@Controller
public class AdminController {
	//This controller is contained Notice, E-mail, Q&A
	//Each function will be made each service, dto, dao kkk
	
	@Autowired
	NoticeService noticeService;
	
	ModelAndView mav;
	NoticeDto noticeDto;
	
	@RequestMapping(value="/main.notice")
	public ModelAndView noticePage(int pageNum){
		mav = new ModelAndView();
		mav = noticeService.getNoticeArticle(pageNum);
		noticeDto = new NoticeDto();
		
		mav.addObject("whatPost", WhatPost.NOTICE);
		
		//Testing, they will be added in session with pageNum, @ModelAttribute
//		mav.addObject("sessionId", "popo");
//		mav.addObject("auth", "Y");
		
		mav.addObject("pageNum", pageNum);
		mav.setViewName("mainPage");
//		System.out.println(mav.toString());
		
		return mav;
	}
	
	@RequestMapping(value="/write.notice", method=RequestMethod.POST)
	public String noticeWrite(@RequestParam("sessionId")String sessionId, String title, String content){
		noticeDto = new NoticeDto();
		noticeDto.setUserId(sessionId);
		noticeDto.setTitle(title);
		noticeDto.setContent(content);
		
		noticeService.insertNotice(noticeDto);
		
		return "redirect:/main.notice?pageNum=1";
	}
	
	
}
