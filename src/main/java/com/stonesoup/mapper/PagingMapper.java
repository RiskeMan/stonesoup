package com.stonesoup.mapper;

import java.util.List;

import com.stonesoup.data.Criteria;
import com.stonesoup.data.boardVO;

public interface PagingMapper {

	// 페이징 목록
	public List<boardVO> board_list(Criteria cri);
	
	// 전체 게시글 데이터의 숫자(페이징 기능에 참조됨)
	public int countBoard(Criteria cri);
}
