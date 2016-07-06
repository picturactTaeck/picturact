package com.project.picturact.article.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.project.picturact.article.service.ArticleService;

@Controller
public class ArticleController {
	
	@Autowired
	ArticleService articleService;
	
	@RequestMapping(value="/post.article")
	@ResponseBody
	public String postArticle( String content , MultipartHttpServletRequest postImgs, HttpSession session){

		System.out.println("addPost");
		String userId = (String) session.getAttribute("userId");
		userId="master";
		

		try{
			articleService.postArticle(userId, content, postImgs);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		
		return "send";
		
	}
	

}
