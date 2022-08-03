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

		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String gender = request.getParameter("gender");
		String nick = request.getParameter("nick");
		String job = request.getParameter("job");

		
		Member member = new Member(email, pw, gender, nick, job);

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