package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.dbrDAO;



@WebServlet("/dbrwrite")
public class dbrwrite extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("euc-kr");

		
		String ano_subject = request.getParameter("ano_subject");
		String ano_content = request.getParameter("ano_content");
		String ano_pic1 = request.getParameter("ano_pic1");
		String ano_pic2 = request.getParameter("ano_pic2");
		String ano_pic3 = request.getParameter("ano_pic3");
		
		
		

		

		
		dbrDAO dbr = new dbrDAO();
		int cnt = dbr.write(ano_subject, ano_content, ano_pic1, ano_pic2, ano_pic3);
		
		if(cnt>0) {
			response.sendRedirect("main.jsp");
		}
		
				
		
		
		
		
		
		
		
		
		
	}

}
