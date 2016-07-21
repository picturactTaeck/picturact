package com.project.picturact.member.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.project.picturact.member.dao.MemberEditDao;
import com.project.picturact.member.dto.MemberDto;

@Service
public class MemberEditServiceImpl implements MemberEditService {
	@Inject
	MemberEditDao memberEditDao;
	MemberDto memberDto;
	
	@Override
	public MemberDto getMemberInfo(String userId) {
		memberDto = memberEditDao.getMemberInfo(userId);
		System.out.println(memberDto);
		return memberDto;
	}

}
