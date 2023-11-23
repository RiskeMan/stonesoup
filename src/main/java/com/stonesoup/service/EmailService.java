package com.stonesoup.service;

import com.stonesoup.data.EmailDTO;

public interface EmailService {

	void sendMail(EmailDTO dto, String add_code);
	
}
