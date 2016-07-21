package com.project.picturact.member.service;

import org.springframework.web.servlet.ModelAndView;

import com.project.picturact.member.dto.MemberDto;

public interface MemberJoinService {
	//	회원가입
	public ModelAndView joinMember(MemberDto memberDto);

	public ModelAndView joinIdCheck(String joinId);
}
