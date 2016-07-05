package com.project.picturact.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.project.picturact.member.service.MemberJoinService;
import com.project.picturact.member.service.MemberLoginService;

@Controller
public class MemberController {
	//login, join ��� ����ϴ� controller
	//�ʿ��� service, dto, dao ���� login, join ����� ���
	//url ���� *.login, *.join ����
	
	@Autowired
	MemberJoinService joinService;
	@Autowired
	MemberLoginService loginService;
	
	
	

}
