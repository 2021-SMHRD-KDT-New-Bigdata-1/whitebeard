package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.commetDAO;
import com.VO.CommentVO;

@WebServlet("/Comment")
public class Comment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		
		String comment = request.getParameter("comment");
		String member_id = (String) request.getAttribute("mmid");
		
		System.out.println(comment);
		System.out.println(member_id);
		
		
/*		String comment_content, int article_seq, String member_id
		String member_id = request.getSession("vo").g;
		
		commetDAO dao = new commetDAO();
		CommentVO com_vo = dao.insert_comment(comment, 0, comment)*/
		
		
		
		
	}

}
