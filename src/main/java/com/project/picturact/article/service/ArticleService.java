package com.project.picturact.article.service;

import java.io.IOException;

import org.springframework.web.multipart.MultipartHttpServletRequest;

public interface ArticleService {

	public void postArticle(String userId, String content, MultipartHttpServletRequest postImgs) throws IOException, Exception;

}
