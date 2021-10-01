package com.servlet;

import java.io.IOException;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.dbrDAO;
import com.VO.MemberVO;



@WebServlet("/dbrwrite")
public class dbrwrite extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("euc-kr");

		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO) session.getAttribute("vo");
		
		
		String member_id = vo.getMember_id();
		String ano_subject = request.getParameter("ano_subject");
		String ano_content = request.getParameter("ano_content");
		String ano_pic1 = request.getParameter("ano_pic1");
		String ano_pic2 = request.getParameter("ano_pic2");
		String ano_pic3 = request.getParameter("ano_pic3");
		int readcount = 0;//
		Timestamp nowdate = new Timestamp(System.currentTimeMillis());
		

		

		
		dbrDAO dbr = new dbrDAO();  
		int num= 0;
		int cnt = dbr.write(member_id,ano_subject, ano_content,
				ano_pic1, ano_pic2, ano_pic3);
		
		if(cnt>0) {
			response.sendRedirect("main.jsp");
		}
		
				
		
		
		
		
		
		
		
		
		
	}

}
