package com.project.picturact.article.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.project.picturact.article.dao.ArticleDao;
import com.project.picturact.article.dto.ArticleContent;
import com.project.picturact.article.dto.ArticleInfo;
import com.project.picturact.article.dto.ImageInfo;

@Service
public class ArticleServiceImpl implements ArticleService {
	
	@Inject
	ArticleDao articleDao;
	
	@Resource(name="saveDir")
	String saveDir;
	
	ArticleInfo articleInfo;

	@Override
	public void postArticle( ArticleContent article, MultipartHttpServletRequest postImgs) throws IOException, Exception {
		// TODO Auto-generated method stub

		int nextArticleNum = articleDao.getNextArticleNum();
		ImageInfo imgInfo;
		article.setArticleNum(nextArticleNum);
		article.setHowManyFiles(postImgs.getFiles("postImgs").size());
		articleDao.insertArticle(article);

		
		for(MultipartFile file:postImgs.getFiles("postImgs")){
			imgInfo = new ImageInfo();
			String storedFname = UploadFileUtils.uploadFile(saveDir, file.getOriginalFilename(), file.getBytes());
			imgInfo.setArticleNum(nextArticleNum);
			imgInfo.setStoredFname(storedFname);
			imgInfo.setFileLength(file.getSize());
			articleDao.insertImgInfo(imgInfo);
		}
		
		
		
		
		
	}

	@Override
	public ArrayList<ArticleContent> getMainArticles(String userId, int lastArticleNum) {
		// TODO Auto-generated method stub
		
		articleInfo = new ArticleInfo();
		articleInfo.setUserId(userId);
		articleInfo.setLastArticleNum(lastArticleNum);
		
		
		return this.mappingFiles(articleDao.getMainPageArticle(articleInfo));
	}
	
	
	

	@Override
	public ArrayList<ArticleContent> getPersonalArticles(String whosPage, int lastArticleNum) {
		// TODO Auto-generated method stub
		articleInfo = new ArticleInfo();
		articleInfo.setUserId(whosPage);
		articleInfo.setLastArticleNum(lastArticleNum);
		
		return  this.mappingFiles(articleDao.getPersonalArticle(articleInfo));
	}

	public ArrayList<ArticleContent> mappingFiles(ArrayList<ArticleContent> article) {
		// TODO Auto-generated method stub
		
		for(ArticleContent i : article){
			i.setFileList(articleDao.getArticleFile(i.getArticleNum()));
		}
		
		return article;
	}

	@Override
	public ArticleContent getOneArticle(int articleNum) {
		// TODO Auto-generated method stub
		ArticleContent article = new ArticleContent();
		article = articleDao.getOneArticle(articleNum);
		article.setFileList(articleDao.getArticleFile(articleNum));
		return article;
	}
	
	
	
	
	
	

}
