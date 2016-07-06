package com.project.picturact.follow.service;

import java.util.HashMap;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.project.picturact.follow.dao.FollowDao;

@Service
public class FollowServiceImpl implements FollowService {

	@Inject
	FollowDao followDao;
	
	@Override
	public int chageFollowState(String pageId, String userId, int follow) {
		// TODO Auto-generated method stub
		HashMap<String, String> relationInfo = new HashMap<String, String>();
		relationInfo.put("pageId", pageId);
		relationInfo.put("userId", userId);
		
		if(follow == FollowState.FOLLOW){
			followDao.unfollow(relationInfo);
		}else{
			followDao.follow(relationInfo);
		}
		
		return followDao.getFollowState(relationInfo);
	}
	
	

}
