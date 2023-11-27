package com.stonesoup.mapper;

import com.stonesoup.data.LoginDTO;
import com.stonesoup.data.MemberVO;

public interface MemberMapper {

	public void join(MemberVO vo);
	
	public String idcheck(String member_id);
	
	public MemberVO login(LoginDTO dto);
	
}
