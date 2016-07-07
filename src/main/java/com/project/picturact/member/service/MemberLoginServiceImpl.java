package com.project.picturact.member.service;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.project.picturact.member.dao.MemberLoginDao;
import com.project.picturact.member.dto.MemberDto;

@Service
public class MemberLoginServiceImpl implements MemberLoginService {

	@Inject
	MemberLoginDao memberLoginDao;
	MemberDto memberDto;
	ModelAndView mav;
	
	@Override
	public ModelAndView loginCheck(String userId, String userPassword, HttpSession session) {
//		DB에 저장된 해당 아이디의 비밀번호
		String correctPassword = memberLoginDao.passwordCheck(userId); 
		
		mav = new ModelAndView();
		
		if(correctPassword != null){
			if(userPassword.equals(correctPassword)){
//				비밀번호 일치
				session.setAttribute("userId", userId);
//				회원정보 수정 때 쓰기 위해서 담아 놓는다
				mav.addObject("userInfo",memberLoginDao.getMemberInfo(userId));
				mav.addObject("userId", userId);
				mav.addObject("loginStatus","loginOK");
				System.out.println("로그인성공");
			}else{
//				아이디는 있지만 비밀번호 틀림
				mav.addObject("loginStatus","PasswordNO");
				System.out.println("비밀번호 틀림");
			}
		}else{
//			아이디가 존재하지 않음
			mav.addObject("loginStatus","NoId");
			System.out.println("아이디 없음");
		}
		// 기존에는 "mainPage" -> "JSON" 페이지는 원래 있던 자리로 고고씽!!
		mav.setViewName("JSON");
//		mav.setViewName("mainPage");
		return mav;
	}

}
