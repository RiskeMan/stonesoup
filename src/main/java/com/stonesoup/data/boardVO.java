package com.stonesoup.data;

import java.util.Date;

import lombok.Data;

@Data
public class boardVO {
/*
CREATE TABLE BODER_DATA (
    T_NUM       NUMBER,                     -- 글 번호
    T_NAME      VARCHAR2(200)   NOT NULL,   -- 제목
    T_CONTENT   VARCHAR2(4000)  NOT NULL,   -- 내용
    MEMBER      VARCHAR2(200)   NOT NULL,   -- 작성자
    T_DATE      DATE            DEFAULT SYSDATE,    -- 등록일
    T_M_DATE    DATE            DEFAULT SYSDATE,    -- 수정일
    T_VIEWS     NUMBER           DEFAULT 0,         -- 조회수
    CONSTRAINT  PK_BODER_DATA        PRIMARY KEY(T_NUM)
);
 */
	// , , , , , , t_views
	
	private Long t_num;
	
	private String member;
	
	private String t_name;
	private String t_content;
	
	private Date t_date;
	private Date t_m_date;
	
	private Integer t_views;
}
