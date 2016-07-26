package com.project.picturact.member.dao;

import com.project.picturact.member.dto.MemberDto;

public interface MemberEditDao {
	public MemberDto getMemberInfo(String userId);
	public void editProfile(MemberDto memberDto);

}
