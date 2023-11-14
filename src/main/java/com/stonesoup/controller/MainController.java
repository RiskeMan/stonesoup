package com.stonesoup.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
	public void mainpage() {
		
		
		
	}
	
}
