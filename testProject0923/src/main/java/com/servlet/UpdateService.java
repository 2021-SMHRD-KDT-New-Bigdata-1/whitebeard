package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.memberDAO;

@WebServlet("/UpdateService")
public class UpdateService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("euc-kr");

		String member_id = request.getParameter("id");
		String nowpw = request.getParameter("nowpw");
		String member_pw = request.getParameter("pw");
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
		
		
		memberDAO dao = new memberDAO();
		int cnt = dao.update(nowpw, member_pw, name, date, nick, email, phone, company_pic1, member_id);
		
		if(cnt>0) {
			response.setCharacterEncoding("euc-kr");
			response.setContentType("text/html; charset=euc-kr");
			PrintWriter out = response.getWriter();
			
			out.print("<script language='javascript' charset='euc-kr'>");
			out.print("alert('회원정보 수정 완료.');");
			out.print("location.href='mypage.jsp'");
			out.print("</script>");
		}
		else {
			
			response.setCharacterEncoding("euc-kr");
			response.setContentType("text/html; charset=euc-kr");
			PrintWriter out = response.getWriter();
			
			out.print("<script language='javascript' charset='euc-kr'>");
			out.print("alert('입력한 정보가 바르지 않습니다.');");
			out.print("location.href='update.html'");
			out.print("</script>");
			
		}
	}

}
