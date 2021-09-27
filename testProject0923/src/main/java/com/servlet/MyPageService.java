package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;


@WebServlet("/MyPageService")
public class MyPageService extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	// ���� ���� (1�� ���� �� ����)
	HttpSession session = request.getSession();
	session.setMaxInactiveInterval(60*60*24*365); 

		
	// mypage.jsp�κ��� '�� ���� ����(town)' ���� ���� �޾ƿ´�
	String town = (String)session.getAttribute("town");
	
	// town ���� ���� ���� ��쿡�� ���� ����, �̹� ���� ��쿡�� ��ü
	if(town != null) {
		session.removeAttribute("town");
		session.setAttribute("town", town);	
	} else {
		session.setAttribute("town", town);
	}
	
	
	// mypage.jsp�κ��� '�� ���� ��ǰ(favitem)' ���� ���� �޾ƿ´�
	String favitem = (String)session.getAttribute("favitem");
	
	// favitem ���� ���� ���� ��쿡�� ���� ����, �̹� ���� ��쿡�� ��ü
		if(favitem != null) {
			session.removeAttribute("favitem");
			session.setAttribute("favitem", favitem);	
		} else {
			session.setAttribute("favitem", favitem);
		}
	
	
		
	response.sendRedirect("mypage.jsp");

	}

}
