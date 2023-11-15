package com.stonesoup.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.stonesoup.data.Criteria;
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
		
		
		
	}
	
	@PostMapping("/board_list")
	public String board_list(boardVO vo) {
		
		
		
		return "";
	}
	
}
