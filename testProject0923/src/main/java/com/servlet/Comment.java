package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.commetDAO;
import com.VO.CommentVO;
import com.VO.MemberVO;

@WebServlet("/Comment")
public class Comment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO) session.getAttribute("vo");
		
		String member_id = vo.getMember_id();
		String content =request.getParameter("content");

		int idx = (int) session.getAttribute("sns_seq");
		
		System.out.println(member_id);
		System.out.println(idx);
		System.out.println(content);
		
		commetDAO dao = new commetDAO();
		int commentVO = dao.insert_comment(content, idx, member_id);
		
		if(commentVO >0) {
			
			response.sendRedirect("main.jsp");
			
		}
		
		
	}

}
