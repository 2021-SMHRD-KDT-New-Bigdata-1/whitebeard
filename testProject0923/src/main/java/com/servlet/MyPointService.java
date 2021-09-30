package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.memberDAO;
import com.DAO.mypointDAO;
import com.DAO.snsDAO;
import com.VO.MemberVO;


@WebServlet("/MyPointService")
public class MyPointService extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
		
	// 한국어 설정, 세션 1년 저장
	request.setCharacterEncoding("euc-kr");
	HttpSession session = request.getSession();
	session.setMaxInactiveInterval(60*60*24*365); 

	// 세션에 저장된 id값 변수에 저장
	MemberVO vo = (MemberVO)session.getAttribute("vo");
	String id = vo.getMember_id();
	mypointDAO dao = new mypointDAO();
	
	// 찜 성공 횟수 + 찜 성공 사진 갯수 = 점수 (세션에 mypoint로 저장)
	int a = dao.select_count_point(id);
	int b = dao.select_picture_point(id);
	
	session.setAttribute("mypoint", a+b);
	
	response.sendRedirect("myzzim.jsp");
	
	}

}
