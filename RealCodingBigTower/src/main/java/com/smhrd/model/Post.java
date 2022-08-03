package com.smhrd.model;

import java.math.BigDecimal;
import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;


@AllArgsConstructor
@RequiredArgsConstructor
@Getter
public class Post {
	private BigDecimal POST_SEQ ;
	@NonNull
	private String POST_TITLE ;
	@NonNull
	private String POST_CONTENT;
	private Timestamp POST_DATE;
	private String U_EMAIL;
	private BigDecimal CAFE_SEQ ;
	@NonNull
	private String HASHTAG;
	

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
}
