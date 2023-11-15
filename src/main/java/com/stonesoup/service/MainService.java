package com.stonesoup.service;

import java.util.List;

import com.stonesoup.data.Criteria;
import com.stonesoup.data.boardVO;

public interface MainService {

	public List<boardVO> board_list(Criteria cri);
	
	public int countBoard(Criteria cri);
}
