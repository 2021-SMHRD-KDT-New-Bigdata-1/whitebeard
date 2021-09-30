package com.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.snsDAO;
import com.VO.SnsVO;

@WebServlet("/search")
public class search extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
		request.setCharacterEncoding("euc-kr");
	
		String want = request.getParameter("want");
		
		snsDAO dao = new snsDAO();
		
		ArrayList<SnsVO> vo = dao.search(want);
		
	}

}
