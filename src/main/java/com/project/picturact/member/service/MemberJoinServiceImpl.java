package com.project.picturact.member.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.project.picturact.member.dao.MemberJoinDao;
import com.project.picturact.member.dto.MemberDto;

@Service
public class MemberJoinServiceImpl implements MemberJoinService {
	@Inject
	MemberJoinDao memberJoinDao;
	
	MemberDto memberDto;
	ModelAndView mav;
	
	@Override
	public ModelAndView joinMember(MemberDto memberDto) {
		
//		Ajax�� �ؾ���!!! (ajax Form ����غ���!!!�˾Ƹ� �α�)
		
		System.out.println(memberDto.toString());
		memberJoinDao.joinMember(memberDto);
		mav.setViewName("JSON");
		return mav;
	}

	@Override
	public ModelAndView joinIdCheck(String joinId) {
//		Id find Database
		String result = memberJoinDao.joinIdCheck(joinId);
		mav = new ModelAndView();
		
		if(result == null){
			result="OK";
			mav.addObject("result", result);
		}
		mav.setViewName("JSON");
		return mav;
	}

}
