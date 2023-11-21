package com.stonesoup.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.stonesoup.data.Criteria;
import com.stonesoup.data.PageDTO;
import com.stonesoup.data.boardVO;
import com.stonesoup.service.MainService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/main/*")
@RequiredArgsConstructor
public class MainController {

	private final MainService mainService;
	
	@GetMapping("/mainpage")
	public String mainpage() {
		
		return "redirect:/main/board_list";
	}
	
	@GetMapping("/board_list")
	public void board_list(Criteria cri, Model model) {
		
		List<boardVO> list = mainService.board_list(cri);
		model.addAttribute("list", list);
		
		int count = mainService.countBoard(cri);
		
		// 2) 페이징 기능 및 검색기능. - PageDTO
		int total = mainService.countBoard(cri); // 테이블의 데이터 전체 갯수.
		
		PageDTO pageDTO = new PageDTO(cri, count);
		model.addAttribute("pageMaker", pageDTO);
		
	}
	
	@GetMapping("/board_view")
	public String board_view(@ModelAttribute("cri") Criteria cri, @RequestParam("t_num") Long t_num, Model model) {
		
		// 조회수 증가 구문
		mainService.board_t_views_up(t_num);
//		log.info("조회수");
		
		// 페이지 조회 구문
		boardVO view = mainService.board_view(t_num);
		
		model.addAttribute("view", view);
		
		return "/main/board_view";
	}
	
	@GetMapping("/board_maker")
	public void board_Maker() {
		
	}
	
	@PostMapping("/board_maker")
	public String board_Maker(boardVO vo) {
		
		mainService.board_Maker(vo);
		
		// 리스트가 아닌 자신의 글 번호 위치로 넘겨볼 계획.
//		boardVO n_vo = 
//		log.info("로그로그" + n_vo.getT_num());
		
		return "redirect:/main/board_list";
//		return "redirect:/main/board_view?t_num=" + n_vo.getT_num();
	}
	
	@GetMapping("/board_edit")
	public void board_edit(@ModelAttribute("cri") Criteria cri, @RequestParam("t_num") Long t_num, boardVO vo, Model model) throws Exception {
		
		log.info("넘버" + t_num);
		
		boardVO view = mainService.board_view(t_num);
		
		model.addAttribute("view", view);
	}
	
	@PostMapping("/board_edit")
	public String board_edit(@ModelAttribute("cri") Criteria cri, @RequestParam("t_num") Long t_num, boardVO vo, RedirectAttributes rttr) {
		
		mainService.board_edit(vo);
		
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		rttr.addAttribute("type", cri.getType());
		rttr.addAttribute("keyword", cri.getKeyword());
		
		return "redirect:/main/board_list";
	}
	
	
	@GetMapping("/board_delete")
	public String btn_board_delete(@RequestParam("t_num") Long t_num) {
		
		mainService.board_delete(t_num);
		
		return "redirect:/main/board_list";
	}
	
}
