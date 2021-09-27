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

	// 세션 설정 (1년 동안 값 유지)
	HttpSession session = request.getSession();
	session.setMaxInactiveInterval(60*60*24*365); 

		
	// mypage.jsp로부터 '내 동네 설정(town)' 세션 값을 받아온다
	String town = (String)session.getAttribute("town");
	
	// town 세션 값이 없을 경우에는 새로 설정, 이미 있을 경우에는 대체
	if(town != null) {
		session.removeAttribute("town");
		session.setAttribute("town", town);	
	} else {
		session.setAttribute("town", town);
	}
	
	
	// mypage.jsp로부터 '내 관심 상품(favitem)' 세션 값을 받아온다
	String favitem = (String)session.getAttribute("favitem");
	
	// favitem 세션 값이 없을 경우에는 새로 설정, 이미 있을 경우에는 대체
		if(favitem != null) {
			session.removeAttribute("favitem");
			session.setAttribute("favitem", favitem);	
		} else {
			session.setAttribute("favitem", favitem);
		}
	
	
		
	response.sendRedirect("mypage.jsp");

	}

}
