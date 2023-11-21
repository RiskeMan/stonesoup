package com.stonesoup.mapper;

import com.stonesoup.data.BoardVO;

public interface MainMapper {
	
	public void board_t_views_up(Long t_num);

	public BoardVO board_view(Long t_num);
	
	public void board_maker(BoardVO vo);
	
	public void board_edit(BoardVO vo);
	
	public void board_delete(Long t_num);
	
}
