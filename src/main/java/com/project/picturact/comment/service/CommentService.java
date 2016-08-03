package com.project.picturact.comment.service;

import java.util.List;

import com.project.picturact.comment.dto.CommentDto;

public interface CommentService {
	public List<CommentDto> getComments(int articleNum);
	public String writeComment(int articleNum,String userId,String commentContent);

}
