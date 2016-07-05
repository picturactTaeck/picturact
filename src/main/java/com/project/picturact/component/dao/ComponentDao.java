package com.project.picturact.component.dao;

import java.util.ArrayList;

import com.project.picturact.component.dto.ImageInfo;
import com.project.picturact.component.dto.ArticleInfo;

public interface ComponentDao {

	public ArrayList<ArticleInfo> getMainPageArticle(String userId);
	public ArrayList<ImageInfo> getArticleFile(int articleNum);
	public ArrayList<ArticleInfo> getPersonalPageArticle(String userId);
	public ArrayList<String> getFollowList(String userId);

}
