package com.servlet;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.memberDAO;

@WebServlet("/JoinService")
public class JoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	request.setCharacterEncoding("euc-kr");

	
	
	
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
//	String pwcheck = request.getParameter("pwcheck");
	String name = request.getParameter("name");
	String nick = request.getParameter("nick");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String company_pic1 = request.getParameter("company_pic1");
	String yy = request.getParameter("yy");
	yy = yy.substring(2);
	String mm = request.getParameter("mm");
	String dd = request.getParameter("dd");
	String date = yy+"/"+mm+"/"+dd;
	System.out.println(date);
	memberDAO dao = new memberDAO();
	int cnt = dao.join(id, pw, name, date, nick, email, phone, company_pic1);
	
	if(cnt>0) {
		response.sendRedirect("joincomplete.html");
	}else {
		response.sendRedirect("join.html");

	}
	
			
	
	}

}
