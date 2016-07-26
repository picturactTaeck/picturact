package com.project.picturact.component.service;

import java.util.ArrayList;

import com.project.picturact.article.dto.ArticleContent;
import com.project.picturact.member.dto.ProfileDto;

public interface ComponentService {



	public ArrayList<String> getFollowList(String userId);

	public int getFollowState(String pageId, String userId);

	public ProfileDto  getProfile(String pageId);

}
