package com.project.picturact.follow.dao;

import java.util.HashMap;

public interface FollowDao {

	public void unfollow(HashMap<String, String> relationInfo);
	public void follow(HashMap<String, String> relationInfo);
	public int getFollowState(HashMap<String, String> relationInfo);

}
