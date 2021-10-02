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

/**
 * Servlet implementation class dbrdel
 */
@WebServlet("/dbrdel")
public class dbrdel extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");

	

		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO) session.getAttribute("vo");
		int ano_seq = (int) session.getAttribute("ano_seq");

		
		dbrDAO dbr = new dbrDAO();  

		int cnt = dbr.delete(ano_seq);
		
		if(cnt>0) {
			response.sendRedirect("main.jsp");
		}else {
			System.out.println("안되네용");
		}
		

		

		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
	
		// TODO Auto-generated method stub
	}

}
