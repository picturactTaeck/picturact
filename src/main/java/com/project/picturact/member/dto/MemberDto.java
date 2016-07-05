package com.project.picturact.member.dto;

public class MemberDto {
	private String userId;
	private String password;
	private String nickname;
	private String username;
	private String email;
	private String profile_orginFname;
	private String profile_storedFname;
	private int profile_fileLength;
	private String admin;
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getProfile_orginFname() {
		return profile_orginFname;
	}
	public void setProfile_orginFname(String profile_orginFname) {
		this.profile_orginFname = profile_orginFname;
	}
	public String getProfile_storedFname() {
		return profile_storedFname;
	}
	public void setProfile_storedFname(String profile_storedFname) {
		this.profile_storedFname = profile_storedFname;
	}
	public int getProfile_fileLength() {
		return profile_fileLength;
	}
	public void setProfile_fileLength(int profile_fileLength) {
		this.profile_fileLength = profile_fileLength;
	}
	public String getAdmin() {
		return admin;
	}
	public void setAdmin(String admin) {
		this.admin = admin;
	}
	@Override
	public String toString() {
		return "MemberDto [userId=" + userId + ", password=" + password + ", nickname=" + nickname + ", username="
				+ username + ", email=" + email + ", profile_orginFname=" + profile_orginFname
				+ ", profile_storedFname=" + profile_storedFname + ", profile_fileLength=" + profile_fileLength
				+ ", admin=" + admin + "]";
	}
	
	

}
