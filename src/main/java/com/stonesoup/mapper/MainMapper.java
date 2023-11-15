package com.stonesoup.mapper;

import java.util.List;

import com.stonesoup.data.Criteria;
import com.stonesoup.data.boardVO;

public interface MainMapper {

	public List<boardVO> board_list(Criteria cri);
}
