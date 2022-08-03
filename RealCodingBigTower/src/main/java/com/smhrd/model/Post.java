package com.smhrd.model;

import java.math.BigDecimal;
import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import oracle.sql.DATE;


@AllArgsConstructor
@RequiredArgsConstructor
@Getter
public class Post {
	
	private BigDecimal POST_SEQ ;
	@NonNull
	private String POST_TITLE ;
	@NonNull
	private String POST_CONTENT;
	private DATE POST_DATE;
	private String U_EMAIL;
	@NonNull
	private String u_nick;
	private BigDecimal CAFE_SEQ ;
	@NonNull
	private String HASHTAG;
	private BigDecimal POST_LIKES;
	private BigDecimal CAFE_SCORE;
	private String CAFE_NAME;
	@NonNull
	private String POST_FILENAME1 ;
	@NonNull
	private String POST_FILENAME2 ;
	@NonNull
	private String POST_FILENAME3 ;
	
	@NonNull
	private String POST_FILENAME4 ;
	@NonNull
	private String POST_FILENAME5 ;
	public Post(BigDecimal CAFE_SEQ, String CAFE_NAME, BigDecimal POST_SEQ, String POST_TITLE, String POST_CONTENT, DATE POST_DATE,
			String U_EMAIL,  String U_nick, String HASHTAG, BigDecimal POST_LIKES,
			 String POST_FILENAME1) {
		super();
		CAFE_SEQ = CAFE_SEQ;
		CAFE_NAME = CAFE_NAME;

		POST_SEQ = POST_SEQ;
		POST_TITLE = POST_TITLE;
		POST_CONTENT = POST_CONTENT;
		POST_DATE = POST_DATE;
		U_EMAIL = U_EMAIL;
		this.u_nick = u_nick;		
		HASHTAG = HASHTAG;
		POST_LIKES = POST_LIKES;		
		POST_FILENAME1 = POST_FILENAME1;
	}
	public Post(BigDecimal pOST_SEQ, @NonNull String pOST_TITLE) {
		super();
		POST_SEQ = pOST_SEQ;
		POST_TITLE = pOST_TITLE;
	}
	public Post(BigDecimal cAFE_SEQ, String cAFE_NAME, BigDecimal cAFE_SCORE,
			 BigDecimal pOST_SEQ, String pOST_TITLE) {
		super();
		CAFE_SEQ = cAFE_SEQ;
		CAFE_NAME = cAFE_NAME;
		CAFE_SCORE = cAFE_SCORE;
		POST_SEQ = pOST_SEQ;
		POST_TITLE = pOST_TITLE;
		
		
	}
	
	

}
