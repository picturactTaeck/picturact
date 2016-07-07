package com.project.picturact.member.dao;

import com.project.picturact.member.dto.MemberDto;

public interface MemberLoginDao {

	public String passwordCheck(String userId);

	public MemberDto getMemberInfo(String userId);

}
