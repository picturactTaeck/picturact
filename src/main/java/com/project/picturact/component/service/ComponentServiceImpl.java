package com.project.picturact.component.service;

import java.util.ArrayList;
import java.util.HashMap;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.project.picturact.component.dao.ComponentDao;
import com.project.picturact.component.dto.ArticleInfo;
import com.project.picturact.component.dto.ImageInfo;

@Service
public class ComponentServiceImpl implements ComponentService {
	@Inject
	ComponentDao componentDao;

	@Override
	public ArrayList<ArticleInfo> getMainArticle(String userId) {
		// TODO Auto-generated method stub
		
		
		return this.mappingFiles(componentDao.getMainPageArticle(userId));
	}
	
	
	
	
	
	@Override
	public ArrayList<ArticleInfo> getPersonalArticle(String userId) {
		// TODO Auto-generated method stub
		System.out.println("service : "+userId);
		return this.mappingFiles(componentDao.getPersonalPageArticle(userId));
	}





	public ArrayList<ArticleInfo> mappingFiles(ArrayList<ArticleInfo> article) {
		// TODO Auto-generated method stub
		
		for(ArticleInfo i : article){
			i.setFileList(componentDao.getArticleFile(i.getArticleNum()));
		}
		
		return article;
	}
//	
//	public ArrayList<ArticleInfo> mappingOriginFiles(ArrayList<ArticleInfo> article) {
//		// TODO Auto-generated method stub
//		
//		for(ArticleInfo i : article){
////			for(ImageInfo j : componentDao.getArticleFile(i.getArticleNum())){
////				j.setOriginFname(j.getStoredFname().substring(0, j.getStoredFname().indexOf('_')-1)+""+
////						j.getStoredFname().substring(j.getStoredFname().indexOf('_')+1, j.getStoredFname().length()));
////				System.out.println("original : "+j.getOriginFname());
////			}
//			i.setFileList(componentDao.getArticleFile(i.getArticleNum()));
//			
//			for(ImageInfo j :i.getFileList()){
//				j.setOriginFname(j.getStoredFname().substring(0, j.getStoredFname().indexOf('_')-1)+""+
//						j.getStoredFname().substring(j.getStoredFname().indexOf('_')+1, j.getStoredFname().length()));
//				System.out.println("original : "+j.getOriginFname());
//				System.out.println("stored : " +j.getStoredFname());
//				
//			}
//		}
//		
//		return article;
//	}
//

	
	




	@Override
	public ArrayList<String> getFollowList(String userId) {
		// TODO Auto-generated method stub
		return componentDao.getFollowList(userId);
	}





	@Override
	public int getFollowState(String pageId, String userId) {
		// TODO Auto-generated method stub
		
		HashMap<String, String> followInfo = new HashMap<String, String>();
		
		
		return componentDao.getFollowState(followInfo);
	}


	
	
	
	
	

}
