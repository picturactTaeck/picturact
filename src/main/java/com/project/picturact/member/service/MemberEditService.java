package com.project.picturact.member.service;

import org.springframework.web.multipart.MultipartFile;

import com.project.picturact.member.dto.MemberDto;

public interface MemberEditService {
	public MemberDto getMemberInfo(String userId);
//	public String profileAsyncUpload(MultipartHttpServletRequest req) throws Exception;
	public void editProfile(MemberDto memberDto,MultipartFile newProfile) throws Exception;
}
