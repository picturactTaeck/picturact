package com.project.picturact.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.project.picturact.admin.service.NoticeService;

@Controller
public class AdminController {
	//Notice, E-mail, Q&A 관련 기능 CONTROLLER
	//각 기능 별로 필요한 service, dto, dao 등은 따로 만들어서 사용..(권장ㅎㅎㅎ)
	
	@Autowired
	NoticeService noticeService;
	
}
