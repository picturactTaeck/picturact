package com.project.picturact.article.dao;

import java.util.ArrayList;

import com.project.picturact.article.dto.ArticleContent;
import com.project.picturact.article.dto.ArticleInfo;
import com.project.picturact.article.dto.ImageInfo;

public interface ArticleDao {

	public int getNextArticleNum();
	public void insertImgInfo(ImageInfo imgInfo);
	public void insertArticle(ArticleContent article);
	public ArrayList<ImageInfo> getArticleFile(int articleNum);
	public ArrayList<ArticleContent> getMainPageArticle(ArticleInfo articleInfo);
	public ArrayList<ArticleContent> getPersonalArticle(ArticleInfo articleInfo);
	public ArticleContent getOneArticle(int articleNum);
	public void deleteFileList(int articleNum);
	public void deleteComment(int articleNum);
	public void deleteArticle(int articleNum);

}
