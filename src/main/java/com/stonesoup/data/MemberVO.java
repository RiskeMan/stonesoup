package com.stonesoup.data;

import java.util.Date;

import lombok.Data;

@Data
public class MemberVO {

/*
CREATE TABLE MEMBER(
    MEMBER_ID       VARCHAR2(50),                       -- ID
    MEMBER_PW       VARCHAR2(50)        NOT NULL,       -- 비밀번호
    MEMBER_NAME     VARCHAR2(30)        NOT NULL,       -- 성명
    MEMBER_EMAIL    VARCHAR2(50)        NOT NULL,       -- 이메일

    MEMBER_ZIPCODE  VARCHAR2(5)         NOT NULL,       -- 우편번호
    MEMBER_ADDR     VARCHAR2(100)       NOT NULL,      -- 주소
    MEMBER_DEADDR   VARCHAR2(100)       NOT NULL,      -- 상세주소
    MEMBER_PHONE    VARCHAR2(15)        NOT NULL,       -- 전화번호(폰 번호)
    MEMBER_POINT    NUMBER DEFAULT 0    NOT NULL,       -- 포인트 점수

    MEMBER_LASTLOGIN      DATE DEFAULT SYSDATE    NOT NULL,       -- 최종 로그인 날짜
    MEMBER_DATESUB        DATE DEFAULT SYSDATE    NOT NULL,       -- 회원 가입 일자
    MEMBER_UPDATEDATE     DATE DEFAULT SYSDATE    NOT NULL,       -- 정보 갱신(수정) 날짜
    
    CONSTRAINT  PK_MEMBER        PRIMARY KEY(MEMBER_ID)
)
 */
	// , , , , , , , , , , , 
	
	private String member_id;			// ID
	private String member_pw;			// 비밀번호
	private String member_name;			// 성명
	private String member_email;		// 이메일

	private String member_zipcode;		// 우편번호
	private String member_addr;			// 주소
	private String member_deaddr;		// 상세주소
	private String member_phone;		// 전화번호(폰 번호)
	private Integer member_point;		// 포인트 점수

	private Date member_lastlogin;		// 최종 로그인 날짜
	private Date member_datesub;		// 회원 가입 일자
	private Date member_updatedate;		// 정보 갱신(수정) 날짜
	
}
