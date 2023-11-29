package com.stonesoup.controller;

import javax.servlet.http.HttpSession;

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

import com.stonesoup.data.LoginDTO;
import com.stonesoup.data.MemberVO;
import com.stonesoup.service.MemberServoice;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;
import oracle.jdbc.proxy.annotation.Post;

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
		
		log.info("브이오" + vo);
		
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

	// 로그인 페이지.
	@GetMapping("/login")
	public void login() {
		
	}
	
	// 로그인 구문
	@PostMapping("/login")
	public String login(LoginDTO dto, HttpSession session, RedirectAttributes rttr) throws Exception {
		
//		vo.setMember_pw(passwordEncoder.encode(vo.getMember_pw()));
		
		MemberVO mb_vo = memberServoice.login(dto);
		
		String url = "";
		String msg = "";
		
		// 아이디 확인 검사
		if(mb_vo != null) {
			
			// 비밀번호 일치 여부 검사
			if(passwordEncoder.matches(dto.getMember_pw(), mb_vo.getMember_pw())) {
				
				// 로그인 시간 업데이트 구문
				memberServoice.login_new(dto);
				
				// 로그인 성공. 세션에 로그인 데이터를 저장
				session.setAttribute("loginStatus", mb_vo);
				
				url = "/"; // 메인 페이지
			}else {
				msg = "비밀번호가 일치하지 않습니다.";
				url = "/hello/login"; // 로그인 페이지 주소로 돌려보낸다.
				rttr.addFlashAttribute("msg", msg);
			}
		}else {
			// 테이블 데이터에 일치하는 ID가 없을 때 넘어온다.
			msg = "아이디를 다시 확인해 주세요.";
			url = "/hello/login";
			rttr.addFlashAttribute("msg", msg);
		}
		
		return "redirect:" + url;
		
	}
	
	
}
