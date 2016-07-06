package com.project.picturact.admin.dao;

import java.util.HashMap;
import java.util.List;

import com.project.picturact.admin.dto.NoticeDto;

public interface NoticeDao {
	public List<NoticeDto> getNoticeArticle(HashMap<String, Integer> hm);
	public void insertNotice(NoticeDto noticeDto);
	public int getNoticeCount();

}
