package com.project.picturact.admin.service;

import org.springframework.web.servlet.ModelAndView;

import com.project.picturact.admin.dto.NoticeDto;

public interface NoticeService {
	public ModelAndView getNoticeArticle(int pageNum);
	public void insertNotice(NoticeDto noticeDto);

}
