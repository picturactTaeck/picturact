package com.project.picturact.component.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.project.picturact.article.dto.ArticleContent;
import com.project.picturact.article.dto.ImageInfo;
import com.project.picturact.member.dto.ProfileDto;

public interface ComponentDao {
	public ArrayList<String> getFollowList(String userId);
	public int getFollowState(HashMap<String, String> followInfo);
	public ProfileDto getProfile(String pageId);

}
