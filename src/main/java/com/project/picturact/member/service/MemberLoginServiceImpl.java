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
//		DB�� ����� �ش� ���̵��� ��й�ȣ
		String correctPassword = memberLoginDao.passwordCheck(userId); 
		 
		mav = new ModelAndView();
		
		if(correctPassword != null){
			if(userPassword.equals(correctPassword)){
//				��й�ȣ ��ġ
				session.setAttribute("userId", userId);
//				ȸ������ ���� �� ���� ���ؼ� ��� ���´�
				mav.addObject("userInfo",memberLoginDao.getMemberInfo(userId));
				mav.addObject("userId", userId);
				mav.addObject("loginStatus","loginOK");
				System.out.println("�α��μ���");
			}else{
//				���̵�� ������ ��й�ȣ Ʋ��
				mav.addObject("loginStatus","PasswordNO");
				System.out.println("��й�ȣ Ʋ��");
			}
		}else{
//			���̵� �������� ����
			mav.addObject("loginStatus","NoId");
			System.out.println("���̵� ����");
		}
		// �������� "mainPage" -> "JSON" �������� ���� �ִ� �ڸ��� ����!!
		mav.setViewName("JSON");
//		mav.setViewName("mainPage");
		return mav;
	}

}
