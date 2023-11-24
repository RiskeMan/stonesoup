package com.stonesoup.service;

import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.stonesoup.data.EmailDTO;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@RequiredArgsConstructor
@Log4j
public class EmailServiceImpl implements EmailService {
	
	// email-config.xml파일로 bean을 주입하는 작업.
	private final JavaMailSender mailSender;

	@Override
	public void sendMail(EmailDTO dto, String add_code) {
		
		// 오류 있음. 동작확인하기
		System.out.println("dto 동작확인 : " + dto);
		System.out.println("dto 동작확인 ??");
		
		System.out.println("add_code 동작확인 : " + add_code);
		System.out.println("add_code 동작확인 ??");
		
		// 메일 구성정보를 담당하는 객체.
		MimeMessage mimeMessage = mailSender.createMimeMessage();
		
		try {
			// 받는사람의 메일주소
			mimeMessage.addRecipient(RecipientType.TO, new InternetAddress(dto.getTo_member_mail()));
			// 보내는 사람(발신자 메일주소, 발신자 이름)
			mimeMessage.addFrom(new InternetAddress[] {new InternetAddress(dto.getServer_mail(), dto.getServer_neme())});
			//메일제목
			mimeMessage.setSubject(dto.getMail_title(), "utf-8");
			//본문내용
			mimeMessage.setText(add_code, "utf-8");
			
			mailSender.send(mimeMessage);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	
	
}
