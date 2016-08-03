package com.project.picturact.comment.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.project.picturact.comment.service.CommentService;

@Controller
public class CommentController {
	ModelAndView mav;
	@Autowired
	CommentService commentService;
	
	@ResponseBody
	@RequestMapping(value="getComments.comment")
	public ModelAndView getComments(int articleNum,HttpSession session){
		mav = new ModelAndView();
		mav.addObject("articleNum", articleNum);
		mav.addObject("comment", commentService.getComments(articleNum));
		mav.setViewName("JSON");
		return mav;
	}
	
	@ResponseBody
	@RequestMapping(value="writeComment.comment")
	public ModelAndView writeComment(int articleNum,String commentContent,HttpSession session){
		mav = new ModelAndView();
		String userId = (String) session.getAttribute("userId");
		
		mav.addObject("commentId", userId);
		mav.addObject("result", commentService.writeComment(articleNum, userId,commentContent));
		mav.setViewName("JSON");
		return mav;
	}

}
