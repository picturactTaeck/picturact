package com.project.picturact.component.service;

import java.util.ArrayList;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.project.picturact.component.dao.ComponentDao;

@Service
public class ComponentServiceImpl implements ComponentService {
	@Inject
	ComponentDao componentDao;
	

	
	
	




	@Override
	public ArrayList<String> getFollowList(String userId) {
		// TODO Auto-generated method stub
		return componentDao.getFollowList(userId);
	}





	@Override
	public int getFollowState(String pageId, String userId) {
		// TODO Auto-generated method stub
		
		HashMap<String, String> followInfo = new HashMap<String, String>();
		followInfo.put("pageId", pageId);
		followInfo.put("userId", userId);
		
		
		return componentDao.getFollowState(followInfo);
	}


	
	
	
	
	

}
