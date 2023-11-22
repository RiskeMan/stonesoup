package com.stonesoup.service;

import org.springframework.stereotype.Service;

import com.stonesoup.mapper.EmailMapper;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class EmailServiceImpl implements EmailService {

	private final EmailMapper emailMapper;
	
	
	
}
