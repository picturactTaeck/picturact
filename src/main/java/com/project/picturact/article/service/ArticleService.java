package com.project.picturact.article.service;

import java.io.IOException;
import java.util.ArrayList;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.project.picturact.article.dto.ArticleContent;

public interface ArticleService {


	public ArrayList<ArticleContent> getMainArticles(String userId, int lastArticleNum);

	public ArrayList<ArticleContent> getPersonalArticles(String whosPage, int lastArticleNum);

	public void postArticle(ArticleContent article, MultipartHttpServletRequest postImgs) throws IOException, Exception;

	public ArticleContent getOneArticle(int articleNum);

}
