package com.smhrd.model;

import java.math.BigDecimal;
import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@RequiredArgsConstructor
@Getter

public class Member {
	@NonNull
	private String u_email;
	@NonNull
	private String u_pw;
	private String u_nick;
	private String u_job;
	private String u_keyword;
	private Character u_gender;	
	private BigDecimal titleSeq;
	private Date u_joindate;
	private String u_int;
	
}
