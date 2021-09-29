package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.memberDAO;

@WebServlet("/SellerUpdate")
public class SellerUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("euc-kr");

		String member_id = request.getParameter("id");
		String member_pw = request.getParameter("pw");		
		String company_name = request.getParameter("company_name");
		String company_bn = request.getParameter("company_bn");
		String b_type = request.getParameter("b_type");
		String company_pic1 = request.getParameter("company_pic1");
		String company_pic2 = request.getParameter("company_pic2");
		String company_pic3 = request.getParameter("company_pic3");
		String company_info = request.getParameter("company_info");
		
		memberDAO dao = new memberDAO();
		int cnt = dao.sellerupdate(member_id, member_pw, company_name, company_bn, b_type, company_pic1, company_pic2, company_pic3, company_info);
		
		if(cnt>0) {
			response.setCharacterEncoding("euc-kr");
			response.setContentType("text/html; charset=euc-kr");
			PrintWriter out = response.getWriter();
			
			out.print("<script language='javascript' charset='euc-kr'>");
			out.print("alert('판매자정보 수정 완료.');");
			out.print("location.href='mypage.jsp'");
			out.print("</script>");
		}
		else {
			
			response.setCharacterEncoding("euc-kr");
			response.setContentType("text/html; charset=euc-kr");
			PrintWriter out = response.getWriter();
			
			out.print("<script language='javascript' charset='euc-kr'>");
			out.print("alert('입력한 정보가 바르지 않습니다.');");
			out.print("location.href='sellerupdate.html'");
			out.print("</script>");
			
		}
	}

}
