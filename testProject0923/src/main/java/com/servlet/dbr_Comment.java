package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.commetDAO;
import com.DAO.dbrDAO;
import com.DAO.dbr_comDAO;
import com.VO.MemberVO;

@WebServlet("/dbr_Comment")
public class dbr_Comment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		response.setCharacterEncoding("euc-kr");
		
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO) session.getAttribute("vo");
		
		String member_id = vo.getMember_id();
		String content =request.getParameter("ano_content2");

		int idx = (int) session.getAttribute("ano_seq");
		
		System.out.println(member_id);
		System.out.println(idx);
		System.out.println(content);
		

		 
	String a =String.format("dbr.jsp?=%s", idx);
		  
		  dbr_comDAO dao = new dbr_comDAO(); 
		  
			int cnt = dao.write_com(content,idx, member_id);
			
			if(cnt>0) {
				response.sendRedirect("main.jsp");
			}else {
				System.out.println("�Ӵ�����");
			}
		
		
	}

}

