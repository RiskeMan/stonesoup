package com.stonesoup.service;

import org.springframework.stereotype.Service;

import com.stonesoup.data.LoginDTO;
import com.stonesoup.data.MemberVO;
import com.stonesoup.mapper.MemberMapper;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MemberServoiceImpl implements MemberServoice {
	
	private final MemberMapper memberMapper;

	@Override
	public void join(MemberVO vo) {
		// TODO Auto-generated method stub
		memberMapper.join(vo);
	}

	@Override
	public String idcheck(String member_id) {
		// TODO Auto-generated method stub
		return memberMapper.idcheck(member_id);
	}

	@Override
	public MemberVO login(LoginDTO dto) {
		// TODO Auto-generated method stub
		return memberMapper.login(dto);
	}
	
	

	
	
}
