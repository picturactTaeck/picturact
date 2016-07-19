package com.project.picturact.article.dto;


import java.util.ArrayList;

import org.springframework.stereotype.Repository;

@Repository
public class ArticleContent {
	private int articleNum;
	private String userId;
	private String title;
	private String content;
	private String writeDate;
	private int howManyFiles;
	private ArrayList<ImageInfo> fileList;
	
	
	
	
	
	
	




	public ArrayList<ImageInfo> getFileList() {
		return fileList;
	}







	public void setFileList(ArrayList<ImageInfo> fileList) {
		this.fileList = fileList;
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







	public String getTitle() {
		return title;
	}







	public void setTitle(String title) {
		this.title = title;
	}







	public String getContent() {
		return content;
	}







	public void setContent(String content) {
		this.content = content;
	}







	public String getWriteDate() {
		return writeDate;
	}







	public void setWriteDate(String writeDate) {
		this.writeDate = writeDate;
	}







	public int getHowManyFiles() {
		return howManyFiles;
	}







	public void setHowManyFiles(int howManyFiles) {
		this.howManyFiles = howManyFiles;
	}







	@Override
	public String toString() {
		return "ArticleContent [articleNum=" + articleNum + ", userId=" + userId + ", title=" + title + ", content="
				+ content + ", writeDate=" + writeDate + ", howManyFiles=" + howManyFiles + ", fileList=" + fileList
				+ "]";
	}






	
	
	
	







	



}

	
	

