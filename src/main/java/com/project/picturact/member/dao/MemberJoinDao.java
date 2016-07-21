package com.project.picturact.member.dao;

import com.project.picturact.member.dto.MemberDto;

public interface MemberJoinDao {
	
	public void joinMember(MemberDto memberDto);

	public String joinIdCheck(String joinId);

}
