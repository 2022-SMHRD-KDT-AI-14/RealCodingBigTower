package com.smhrd.controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.model.Member;
import com.smhrd.model.Post;
import com.smhrd.model.PostDAO;


public class PostWriteCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//세션 - 닉네임, 칭호 꺼내오기
		request.setCharacterEncoding("UTF-8");
			
		//세션 - id
		HttpSession session = request.getSession();
		Member vo = (Member)session.getAttribute("loginVO");
		String nick = vo.getNick();
			
			//파일이 저장될 서버의 경로
			String saveDir = request.getServletContext().getRealPath("img");			//파일의 최대크기 20MB
			int maxSize=1024*1024*20;
			//인코딩 방식
			String encoding = "UTF-8";
			
		
			//파일, 글 제목, 컨텐츠, 키워드
			MultipartRequest multi =  new MultipartRequest(request, saveDir, maxSize, encoding, new DefaultFileRenamePolicy());
			
			
			String title = multi.getParameter("title");
			String content =multi.getParameter("content");
			String keyword = multi.getParameter("keyword");
			String filename1 = URLEncoder.encode(multi.getFilesystemName("file1"),"UTF-8");
			String filename2 = URLEncoder.encode(multi.getFilesystemName("file2"),"UTF-8");
			String filename3 = URLEncoder.encode(multi.getFilesystemName("file3"),"UTF-8");
			String filename4 = URLEncoder.encode(multi.getFilesystemName("file4"),"UTF-8");
			String filename5 = URLEncoder.encode(multi.getFilesystemName("file5"),"UTF-8");			
			
				
			Post postVO = new Post(title,nick,content,keyword,filename1,filename2,filename3,filename4,filename5);
			PostDAO dao = new PostDAO();
			int cnt =dao.insertPost(postVO);
			if(cnt>0) {
				System.out.print("완료");
				response.sendRedirect("P4post.jsp");
			}else {
				System.out.print("실패");
				response.sendRedirect("P3postupload.jsp");
			}
			
			
			
;	}

}
