package com.smhrd.model;

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
	private String email;
	@NonNull
	private String pw;
	private String nick;
	private String job;
	private String keyword;
	private String gender;	
	private String titleSeq;
	private String joindate;
	private String intr;
	
	
	public Member(String email, String pw, String gender, String nick, String job) {
		super();
		this.email = email;
		this.pw = pw;
		this.gender = gender;
		this.nick = nick;
		this.job = job;
	}


	public Member( String email,  String pw, String nick, String job, String gender, String titleSeq,
			String joindate) {
		super();
		this.email = email;
		this.pw = pw;
		this.nick = nick;
		this.job = job;
		this.gender = gender;
		this.titleSeq = titleSeq;
		this.joindate = joindate;
	}	

}
