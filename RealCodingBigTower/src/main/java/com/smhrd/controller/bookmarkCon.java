package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.bookmark;
import com.smhrd.model.bookmarkDAO;



public class bookmarkCon extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String m_email = "admin@admin"; // 세션에서 받아온 유저 아이디로 채워넣어줘야 함
		int post_seq = 2;
		
		bookmark vo = new bookmark(m_email, post_seq);
		bookmarkDAO dao = new bookmarkDAO();
		
		int result = dao.insertBookMark(vo);
		
		if(result>0) {
			System.out.println("북마크성공");
		} else {
			System.out.println("북마크실패");
		}
		
	}

}
