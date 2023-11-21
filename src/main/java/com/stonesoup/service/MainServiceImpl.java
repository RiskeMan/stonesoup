package com.stonesoup.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.stonesoup.data.Criteria;
import com.stonesoup.data.BoardVO;
import com.stonesoup.mapper.MainMapper;
import com.stonesoup.mapper.PagingMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@RequiredArgsConstructor
@Log4j
public class MainServiceImpl implements MainService {

	private final PagingMapper pagingMapper; // 페이징 
	private final MainMapper mainMapper;

	@Override
	public List<BoardVO> board_list(Criteria cri) {
		// TODO Auto-generated method stub
		return pagingMapper.board_list(cri);
	}

	@Override
	public int countBoard(Criteria cri) {
		// TODO Auto-generated method stub
		return pagingMapper.countBoard(cri);
	}

	@Override
	public void board_t_views_up(Long t_num) {
		// TODO Auto-generated method stub
		mainMapper.board_t_views_up(t_num);
	}

	@Override
	public BoardVO board_view(Long t_num) {
		// TODO Auto-generated method stub
		return mainMapper.board_view(t_num);
	}

	@Override
	public void board_Maker(BoardVO vo) {
		// TODO Auto-generated method stub
		mainMapper.board_maker(vo);
	}

	@Override
	public void board_edit(BoardVO vo) {
		// TODO Auto-generated method stub
		mainMapper.board_edit(vo);
	}

	@Override
	public void board_delete(Long t_num) {
		// TODO Auto-generated method stub
		mainMapper.board_delete(t_num);
	}


	
}
