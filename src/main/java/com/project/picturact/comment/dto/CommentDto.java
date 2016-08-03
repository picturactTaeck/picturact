package com.project.picturact.comment.dto;

public class CommentDto {
	private int commentNum;
	private int articleNum;
	private String userId;
	private String commentContent;
	private String commentDate;
	
	public int getCommentNum() {
		return commentNum;
	}
	public void setCommentNum(int commentNum) {
		this.commentNum = commentNum;
	}
	public int getArticleNum() {
		return articleNum;
	}
	public void setArticleNum(int articleNum) {
		this.articleNum = articleNum;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getCommentContent() {
		return commentContent;
	}
	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}
	public String getCommentDate() {
		return commentDate;
	}
	public void setCommentDate(String commentDate) {
		this.commentDate = commentDate;
	}
	
	@Override
	public String toString() {
		return "CommentDto [commentNum=" + commentNum + ", articleNum=" + articleNum + ", userId=" + userId
				+ ", commentContent=" + commentContent + ", commentDate=" + commentDate + "]";
	}
	
	
	

}
