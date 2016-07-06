package com.project.picturact.admin.dto;

public class NoticeDto {
	private int noticeNum;
	private String userId;
	private String title;
	private String content;
	private String writeDate;
	private int howManyFiles;
	
	
	public int getNoticeNum() {
		return noticeNum;
	}
	public void setNoticeNum(int noticeNum) {
		this.noticeNum = noticeNum;
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
		return "NoticeDto [noticeNum=" + noticeNum + ", userId=" + userId + ", title=" + title + ", content=" + content
				+ ", writeDate=" + writeDate + ", howManyFiles=" + howManyFiles + "]";
	}


}