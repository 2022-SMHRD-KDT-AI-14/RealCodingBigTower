package com.smhrd.model;

public class bookmark {
	
	private String m_email; // 세션에서 받아온 유저 아이디로 채워넣어줘야 함
	private int post_seq;
	
	public bookmark(String m_email, int post_seq) {
		super();
		this.m_email = m_email;
		this.post_seq = post_seq;
	}

	public String getM_email() {
		return m_email;
	}

	public void setM_email(String m_email) {
		this.m_email = m_email;
	}

	public int getPost_seq() {
		return post_seq;
	}

	public void setPost_seq(int post_seq) {
		this.post_seq = post_seq;
	}

}
