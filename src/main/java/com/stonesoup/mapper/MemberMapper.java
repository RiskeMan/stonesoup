package com.stonesoup.mapper;

import com.stonesoup.data.LoginDTO;
import com.stonesoup.data.MemberVO;

public interface MemberMapper {

	void join(MemberVO vo);
	
	String idcheck(String member_id);
	
	MemberVO login(LoginDTO dto);
	
	void login_new(LoginDTO dto);
}
