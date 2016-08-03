package com.project.picturact.comment.dao;

import java.util.List;

import com.project.picturact.comment.dto.CommentDto;

public interface CommentDao {
	public List<CommentDto> getComments(int articleNum);
	public void writeComment(CommentDto commentDto);

}
