package com.stonesoup.controller;

import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.stonesoup.data.EmailDTO;
import com.stonesoup.service.EmailService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@RestController
@Log4j
@RequiredArgsConstructor
@RequestMapping("/email/*")
public class EmailController {

	private final EmailService emailService;
	
	// 메일 인증코드 요청 구문
	@GetMapping("/add_code")
	public ResponseEntity<String> authSend(EmailDTO dto, HttpSession session) {
		
		ResponseEntity<String> entity = null;
		
		// 인증코드 생성 구문
		String add_code = "";
		for(int i=0; i <6; i++) {
			add_code += String.valueOf((int)(Math.floor(Math.random()*10)));
		}
		
		// 인증코드 확인
//		log.info("인증코드 콘솔에서 확인 : " + add_code);
		
		// 비교 확인 목적을 위해 인증코드를 세션형태로 미리 저장해 둔다.
		session.setAttribute("add_code", add_code);
		
		try {
			log.info("동작확인");
			// 메일 보내기
			emailService.sendMail(dto, add_code);
//			log.info("동작확인 dto" + dto);
//			log.info("동작확인 add" + add_code);
			entity = new ResponseEntity<String>("success", HttpStatus.OK);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			entity = new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
			// 500번 오류를 도출해 준다.
		}
		
		return entity;
	}
	
	// 인증코드 확인
	@GetMapping("/add_code_ok")
	public ResponseEntity<String> add_code_ok(String add_code, HttpSession session) {
		
		ResponseEntity<String> entity = null;
		
		// 미리 세션에 저장해 둔 add_code값을 가져와 비교하는 구문.
		if(session.getAttribute("add_code") != null) {
			if(add_code.equals(session.getAttribute("add_code"))) {
				entity = new ResponseEntity<String>("success", HttpStatus.OK);
			}else {
				entity = new ResponseEntity<String>("fail", HttpStatus.OK);
			}
		}else {
			// session의 add_code의 값이 null일때.
			entity = new ResponseEntity<String>("request", HttpStatus.OK);
		}
		
		return entity;
	}
	
	
	
}
