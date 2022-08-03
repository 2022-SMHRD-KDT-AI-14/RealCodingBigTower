package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.Member;
import com.smhrd.model.MemberDAO;


public class KeyCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		Member joinMember = (Member)request.getAttribute("joinMember");
		String key = request.getParameter("keyword");
		
		String email = joinMember.getEmail();

		Member member = new Member(email, key);

		MemberDAO dao = new MemberDAO();
		int cnt = dao.insertMember(member);

		if (cnt > 0) {
			System.out.println("회원가입 성공");
			RequestDispatcher rd = request.getRequestDispatcher("main.jsp");
			request.setAttribute("email", email);
			rd.forward(request, response);

		} else {
			System.out.println("회원가입 실패");
			response.sendRedirect("main.jsp");
		}

	}

}
