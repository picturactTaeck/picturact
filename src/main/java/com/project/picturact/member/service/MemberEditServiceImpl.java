package com.project.picturact.member.service;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.project.picturact.member.dao.MemberEditDao;
import com.project.picturact.member.dto.MemberDto;
import com.project.picturact.member.utils.UploadFileUtils;

@Service
public class MemberEditServiceImpl implements MemberEditService {
	@Inject
	MemberEditDao memberEditDao;
	MemberDto memberDto;
	
	@Resource(name="saveDir")
	String saveDir;
	
	@Override
	public MemberDto getMemberInfo(String userId) {
		memberDto = new MemberDto();
		memberDto = memberEditDao.getMemberInfo(userId);
		System.out.println(memberDto.toString());
		return memberDto;
	}
	
//	@Override
//	public String profileAsyncUpload(MultipartHttpServletRequest req) throws Exception{
//		String file = null;
//		MultipartFile mFile = req.getFile("file");
//		file = UploadFileUtils.uploadFile(saveProfileDir, mFile.getOriginalFilename(), mFile.getBytes());
//		return file;
//	}


	@Override
	public void editProfile(MemberDto memberDto,MultipartFile newProfile) throws Exception {
		String file = null;
		System.out.println("edit!");
		if(!newProfile.isEmpty()){
			System.out.println("here?");
			System.out.println("savedir : " +saveDir);
			file = UploadFileUtils.uploadFile(saveDir+"profile/", newProfile.getOriginalFilename(), newProfile.getBytes());
			memberDto.setProfileImg(file);
		}
		System.out.println(memberDto.toString());
		memberEditDao.editProfile(memberDto);
	}

}
