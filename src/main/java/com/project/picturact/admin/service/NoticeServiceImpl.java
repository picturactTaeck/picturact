package com.project.picturact.admin.service;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.project.picturact.admin.dao.NoticeDao;
import com.project.picturact.admin.dto.NoticeDto;

@Service
public class NoticeServiceImpl implements NoticeService {
	@Inject
	NoticeDao noticeDao;
	@Resource
	Page page;
	NoticeDto noticeDto;
	ModelAndView mav;

	@Override
	public ModelAndView getNoticeArticle(int pageNum) {
		mav = new ModelAndView();
		noticeDto = new NoticeDto();
		
		int totalCount=0;		
		int pageSize=10;
	    int pageBlock=10;
	   	
	    totalCount = noticeDao.getNoticeCount();
		page.paging(pageNum,totalCount,pageSize, pageBlock);
		
		
		HashMap<String, Integer> hm = new HashMap<String, Integer>();
		hm.put("startRow", page.getStartRow());
		hm.put("endRow", page.getEndRow());
		
		List<NoticeDto> noticeList = noticeDao.getNoticeArticle(hm);

		mav.addObject("noticeList", noticeList);
		mav.addObject("pageNum", pageNum);
		mav.addObject("pageCode", page.getSb().toString());
		return mav;
	}

	@Override
	public void insertNotice(NoticeDto noticeDto) {
		noticeDao.insertNotice(noticeDto);
		
	}
	
	

}
