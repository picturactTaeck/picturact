package com.project.picturact.article.dao;

import com.project.picturact.component.dto.ArticleInfo;
import com.project.picturact.component.dto.ImageInfo;

public interface ArticleDao {

	public int getNextArticleNum();
	public void insertImgInfo(ImageInfo imgInfo);
	public void insertArticle(ArticleInfo article);

}
