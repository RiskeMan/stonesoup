package com.stonesoup.service;

import java.util.List;

import com.stonesoup.data.Criteria;
import com.stonesoup.data.boardVO;

public interface MainService {

	// 페이징 기능 구문
	public List<boardVO> board_list(Criteria cri);
	
	public int countBoard(Criteria cri);
	
	// 보드 테이블 구문
	public void board_t_views_up(Long t_num);
	
	public boardVO board_view(Long t_num);
	
	public void board_Maker(boardVO vo);
	
	public void board_edit(boardVO vo);
	
	public void board_delete(Long t_num);
}
