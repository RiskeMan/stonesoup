package com.stonesoup.data;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class EmailDTO {

	private String server_neme;		// 발신자명
	private String server_mail;		// 발신자 메일주소
	private String to_member_mail;	// 수신자 메일주소
	private String mail_title;		// 제목
	private String mail_body;		// 본문내용
	
	public EmailDTO() {
		this.server_neme = "StoneSoup";
		this.server_mail = "StoneSoup";
		this.mail_title = "StoneSoup 회원가입 인증 메일입니다.";
		this.mail_body = "메일 인증코드 입니다.";
		
	}
}
