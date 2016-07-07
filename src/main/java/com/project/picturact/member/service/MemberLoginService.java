package com.project.picturact.member.service;

import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;

public interface MemberLoginService {
	//	로그인 시 아이디 체크
	public ModelAndView loginCheck(String userId, String userPassword, HttpSession session);
	
}
