package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.Member;
import com.smhrd.model.MemberDAO;



public class UpdateCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");

		HttpSession session = request.getSession();
		Member loginMember = (Member) session.getAttribute("loginMember");
		String email = loginMember.getEmail();

		String pw = request.getParameter("pw");
		String nick = request.getParameter("nick");
		String job = request.getParameter("job");
		String gender = request.getParameter("gender");

		Member updateMember = new Member(email, pw, nick, job, gender);

		Member member = new Member(email, pw, nick, job, gender);

		MemberDAO dao = new MemberDAO();
		int cnt = dao.updateMember(updateMember);

		if (cnt > 0) {// 수정성공
			System.out.println("수정성공!");
			session.setAttribute("loginMember",updateMember);
			response.sendRedirect("P3userinfo.jsp");
		} else {// 수정실패
			System.out.println("수정실패!");
			response.sendRedirect("P3userinfo.jsp");
		}
	}
}
