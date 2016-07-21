package com.project.picturact.member.service;

import org.springframework.web.servlet.ModelAndView;

import com.project.picturact.member.dto.MemberDto;

public interface MemberJoinService {
	//	ȸ������
	public ModelAndView joinMember(MemberDto memberDto);

	public ModelAndView joinIdCheck(String joinId);
}
