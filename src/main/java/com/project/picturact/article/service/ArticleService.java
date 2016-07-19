package com.project.picturact.article.service;

import java.io.IOException;
import java.util.ArrayList;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.project.picturact.article.dto.ArticleContent;

public interface ArticleService {

	public void postArticle(String userId, String content, MultipartHttpServletRequest postImgs) throws IOException, Exception;

	public ArrayList<ArticleContent> getMainArticles(String userId, int lastArticleNum);

	public ArrayList<ArticleContent> getPersonalArticles(String whosPage, int lastArticleNum);

}
