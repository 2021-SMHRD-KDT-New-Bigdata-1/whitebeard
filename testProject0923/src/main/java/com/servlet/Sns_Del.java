package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.snsDAO;

@WebServlet("/Sns_Del")
public class Sns_Del extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		int sns_seq = (int) session.getAttribute("sns_seq");
		
		snsDAO dao = new snsDAO();
		int cnt = dao.delete_sns(sns_seq);
	
		if(cnt>0) {
			response.sendRedirect("main.jsp");
		}else {
			System.out.println("안되네용");
		}
	}

}
