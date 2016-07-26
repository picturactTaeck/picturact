package com.project.picturact.article.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.project.picturact.article.dto.ArticleContent;
import com.project.picturact.article.service.ArticleService;

@Controller
public class ArticleController {
	
	@Autowired
	ArticleService articleService;
	
	@RequestMapping(value="/post.article")
	@ResponseBody
	public String postArticle( ArticleContent article , MultipartHttpServletRequest postImgs, HttpSession session){

		String userId = (String) session.getAttribute("userId");
		article.setUserId(userId);
		System.out.println(article.toString());
		

		try{
			articleService.postArticle( article, postImgs);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		
		return "send";
		
	}
	
	
	//main article return
	@RequestMapping(value="/getMain.article")
	@ResponseBody
	public ArrayList<ArticleContent> getMainArticle(int lastArticleNum, HttpSession session){
		String userId = (String) session.getAttribute("userId");
		
		
		return articleService.getMainArticles(userId,lastArticleNum);
		
	}
	//personal article return
	@RequestMapping(value="/getPersonal.article")
	@ResponseBody
	public ArrayList<ArticleContent> getArticle(int lastArticleNum,String whosPage , HttpServletRequest request){

		
		return articleService.getPersonalArticles(whosPage ,lastArticleNum);
		
	}
	

}
