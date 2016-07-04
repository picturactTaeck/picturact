package com.project.picturact.component.service;

import java.util.ArrayList;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.project.picturact.component.dao.ComponentDao;
import com.project.picturact.component.dto.ArticleInfo;

@Service
public class ComponentServiceImpl implements ComponentService {
	@Inject
	ComponentDao mainDao;

	@Override
	public ArrayList<ArticleInfo> getMainArticle(String userId) {
		// TODO Auto-generated method stub
		return this.mappingFiles(mainDao.getMainPageArticle(userId));
	}
	
	
	
	
	
	@Override
	public ArrayList<ArticleInfo> getPersonalArticle(String userId) {
		// TODO Auto-generated method stub
		return null;
	}





	public ArrayList<ArticleInfo> mappingFiles(ArrayList<ArticleInfo> article) {
		// TODO Auto-generated method stub
		
		for(ArticleInfo i : article){
			i.setFileList(mainDao.getArticleFile(i.getArticleNum()));
		}
		
		return article;
	}

	
	
	
	
	

}
