package com.project.picturact.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.project.picturact.member.dto.MemberDto;
import com.project.picturact.member.service.MemberJoinService;
import com.project.picturact.member.service.MemberLoginService;

@Controller
public class MemberController {
	//login, join ��������占� ������������黎���占� controller
	//�����몄�������� service, dto, dao ������������ login, join ������������������ ��������占�
	//url ������������ *.login, *.join ������������
	
	@Autowired
	MemberJoinService joinService;
	@Autowired
	MemberLoginService loginService;
	
	ModelAndView mav = null;
	
	@RequestMapping(value="/loginPage.login")
	public String loginPage(){
	    	return "loginPage";
	}
	
	@RequestMapping(value="/login.login")
	@ResponseBody
	public ModelAndView login(String userId, String userPassword, HttpSession session){
		return loginService.loginCheck(userId, userPassword, session);
	}
	
	@RequestMapping(value="/logout.login")
	public String logout(HttpSession session){
		session.invalidate();
		return "redirect:/";
	}
	
	
	
	
	@RequestMapping(value="/join.join", method=RequestMethod.POST)
	public ModelAndView join(HttpServletRequest request, String joinId, String joinPassword, String nickName, String userName, String eMail){
		
		MemberDto memberDto = new MemberDto();
		memberDto.setUserId(joinId);
		memberDto.setPassword(joinPassword);
		memberDto.setNickname(nickName);
		memberDto.setUsername(userName);
		memberDto.setEmail(eMail);
		
		return joinService.joinMember(memberDto);
	}

	@RequestMapping(value="/joinIdCheck.join")
	public ModelAndView joinIdCheck(String joinId){
		return joinService.joinIdCheck(joinId);
	}

}
