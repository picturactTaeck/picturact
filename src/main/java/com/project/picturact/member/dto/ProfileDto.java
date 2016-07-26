package com.project.picturact.member.dto;

public class ProfileDto {
	private String profileImg;
	private String profileMessage;
	private String email;
	public String getProfileImg() {
		return profileImg;
	}
	public void setProfileImg(String profileImg) {
		this.profileImg = profileImg;
	}
	public String getProfileMessage() {
		return profileMessage;
	}
	public void setProfileMessage(String profileMessage) {
		this.profileMessage = profileMessage;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "ProfileDto [profileImg=" + profileImg + ", profileMessage=" + profileMessage + ", email=" + email + "]";
	}
	
	

}
