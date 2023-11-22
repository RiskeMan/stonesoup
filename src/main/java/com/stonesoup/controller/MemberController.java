package com.stonesoup.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.stonesoup.data.MemberVO;
import com.stonesoup.service.MemberServoice;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequiredArgsConstructor
@RequestMapping("/hello/*")
public class MemberController {
	
	private final MemberServoice memberServoice;
	
	private final PasswordEncoder passwordEncoder;

	@GetMapping("/join")
	public void join() {
		
	}
	
	@PostMapping("/join")
	public String join(MemberVO vo, RedirectAttributes rttr) throws Exception {
		
		
		// 비밀번호 암호화 구문
		vo.setMember_pw(passwordEncoder.encode(vo.getMember_pw()));
		
		// 회원가입 데이터값 테이블에 입력
		memberServoice.join(vo);
		
		return "redirect:/hello/login";
	}
	
	// 아이디 중복검사 체크 구문
	@GetMapping("idcheck")
	public ResponseEntity<String> idcheck(String member_id, RedirectAttributes rttr) throws Exception {
		
		ResponseEntity<String> entity = null;
		
		// 메서드 호출구문
		String check = "";
		if(memberServoice.idcheck(member_id) != null) {
			check = "false"; // 아이디가 중복된다.
		}else {
			check = "true"; // 중복되는 아이디가 없다.
		}
		
		entity = new ResponseEntity<String>(check, HttpStatus.OK);
		
		return entity;
	}
	
	@GetMapping("/login")
	public void login() {
		
	}
	
	
}
