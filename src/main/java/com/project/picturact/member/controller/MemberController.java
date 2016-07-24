package com.project.picturact.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.project.picturact.member.dto.MemberDto;
import com.project.picturact.member.service.MemberEditService;
import com.project.picturact.member.service.MemberJoinService;
import com.project.picturact.member.service.MemberLoginService;

@Controller
public class MemberController {
	
	@Autowired
	MemberJoinService joinService;
	@Autowired
	MemberLoginService loginService;
	@Autowired
	MemberEditService editService;
	
	ModelAndView mav = null;
	
	@RequestMapping(value="/loginPage.member")
	public String loginPage(){
	    	return "loginPage";
	}
	
	@RequestMapping(value="/login.member")
	@ResponseBody
	public ModelAndView login(String userId, String userPassword, HttpSession session){
		return loginService.loginCheck(userId, userPassword, session);
	}
	
	@RequestMapping(value="/logout.member")
	public String logout(HttpSession session){
		session.invalidate();
		return "redirect:/";
	}
	
	
	
	
	@RequestMapping(value="/join.member", method=RequestMethod.POST)
	public ModelAndView join(MemberDto memberDto){
		
		
		
		return joinService.joinMember(memberDto);
	}

	@RequestMapping(value="/joinIdCheck.member")
	public ModelAndView joinIdCheck(String joinId){
		return joinService.joinIdCheck(joinId);
	}
	
	@RequestMapping(value="/edit.member")
	public ModelAndView personalEdit(@ModelAttribute String userId, int whatPost){
		mav = new ModelAndView();
		mav.addObject("member", editService.getMemberInfo(userId));
		mav.addObject("whatPost", whatPost);
		mav.setViewName("mainPage");
		return mav;
	}
}
