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
	private BigDecimal num ;
	@NonNull
	private String title ;
	@NonNull
	private String content;
	@NonNull
	private String keyword;
	
	private Timestamp uploadday;
	@NonNull
	private String nick;
	private BigDecimal cafe_num;
	private BigDecimal like;
	@NonNull
	private String filename1 ;
	@NonNull
	private String filename2 ;
	@NonNull
	private String filename3 ;
	@NonNull
	private String filename4 ;
	@NonNull
	private String filename5 ;
}
