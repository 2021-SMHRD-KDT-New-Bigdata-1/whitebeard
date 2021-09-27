package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.DAO.memberDAO;

@WebServlet("/FindID")
public class FindID extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("euc-kr");
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
	
		memberDAO dao = new memberDAO();
		String member_id = dao.findid(name, email);
		
		HttpSession session = request.getSession();
		session.setAttribute("member_id", member_id);
		session.setAttribute("name", name);

		if(member_id != null) {
			response.sendRedirect("findID.jsp");
		}
		else {
			
			out.print("<script>");
			out.print("alert('입력한 정보가 바르지 않습니다.');");
			out.print("</script>");
			response.sendRedirect("find_id_pw.html");
		}
	}

}
