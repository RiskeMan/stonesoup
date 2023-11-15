package com.stonesoup.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.stonesoup.data.Criteria;
import com.stonesoup.data.boardVO;
import com.stonesoup.mapper.MainMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@RequiredArgsConstructor
@Log4j
public class MainServiceImpl implements MainService {

	private final MainMapper mainMapper;

	@Override
	public List<boardVO> board_list(Criteria cri) {
		// TODO Auto-generated method stub
		return mainMapper.board_list(cri);
	}

	@Override
	public int countBoard(Criteria cri) {
		// TODO Auto-generated method stub
		return mainMapper.countBoard(cri);
	}
	
	
}
