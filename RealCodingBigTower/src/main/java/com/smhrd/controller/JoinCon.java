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


public class JoinCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		String u_email = request.getParameter("u_email");
		String u_pw = request.getParameter("u_pw");
		Character u_gender = request.getParameter("u_gender").charAt(0);
		String u_nick = request.getParameter("u_nick");
		String u_job = request.getParameter("u_job");

		
		Member member = new Member(u_email, u_pw, u_gender, u_nick, u_job);

		MemberDAO dao = new MemberDAO();
		int cnt = dao.insertMember(member);

		if (cnt > 0) {
			System.out.println("회원가입 성공");
			RequestDispatcher rd = request.getRequestDispatcher("joinSuccess.jsp");
			request.setAttribute("joinMember", member);
			rd.forward(request, response);

		} else {
			System.out.println("회원가입 실패");
			response.sendRedirect("login.jsp");
		}

	}

}