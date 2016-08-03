package com.project.picturact.comment.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.project.picturact.comment.dao.CommentDao;
import com.project.picturact.comment.dto.CommentDto;

@Service
public class CommentServiceImpl implements CommentService {
	@Inject
	CommentDao commentDao;
	
	CommentDto commentDto;
	List<CommentDto> commentList;
	

	@Override
	public List<CommentDto> getComments(int articleNum) {
		commentList = commentDao.getComments(articleNum);
		return commentList;
	}

	@Override
	public String writeComment(int articleNum, String userId,String commentContent) {
		commentDto = new CommentDto();
		commentDto.setArticleNum(articleNum);
		commentDto.setUserId(userId);
		commentDto.setCommentContent(commentContent);
		System.out.println(commentDto);
		try{
			
			commentDao.writeComment(commentDto);
			return "Write comment success";
		}catch(Exception e){

			return "Write comment fail";
		}
		

		
	}
	
	

}
