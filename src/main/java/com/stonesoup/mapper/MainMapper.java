package com.stonesoup.mapper;

import com.stonesoup.data.boardVO;

public interface MainMapper {
	
	public void board_t_views_up(Long t_num);

	public boardVO board_view(Long t_num);
	
	public void board_maker(boardVO vo);
	
}
