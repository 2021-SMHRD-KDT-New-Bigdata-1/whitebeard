package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.memberDAO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/SellerJoinService")
public class SellerJoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("euc-kr");
		 
		String saveDri = request.getServletContext().getRealPath("uploadedFiles");
		System.out.println(saveDri);
		int maxSize = 5*1024*1024;
		String encoding = "EUC-KR";
		
		MultipartRequest multi = new MultipartRequest(request, saveDri, maxSize, encoding, new DefaultFileRenamePolicy());

		String member_id = multi.getParameter("id");
		String member_pw = multi.getParameter("pw");
		String company_name = multi.getParameter("company_name");
		String company_bn = multi.getParameter("company_bn");
		String b_type = multi.getParameter("b_type");
		String company_pic1 = URLEncoder.encode(multi.getFilesystemName("company_pic1"), "EUC-KR");
		String company_pic2 = URLEncoder.encode(multi.getFilesystemName("company_pic2"), "EUC-KR");
		String company_pic3 = URLEncoder.encode(multi.getFilesystemName("company_pic3"), "EUC-KR");
		String company_info = multi.getParameter("company_info");

//		String member_id = request.getParameter("id");
//		String member_pw = request.getParameter("pw");		
//		String company_name = request.getParameter("company_name");
//		String company_bn = request.getParameter("company_bn");
//		String b_type = request.getParameter("b_type");
//		String company_pic1 = request.getParameter("company_pic1");
//		String company_pic2 = request.getParameter("company_pic2");
//		String company_pic3 = request.getParameter("company_pic3");
//		String company_info = request.getParameter("company_info");
		
		System.out.println(member_id + ","+member_pw + ","+ company_name + ","+ company_bn + ","+ b_type + ","+ company_pic1 + ","+ company_pic2 + ","+ company_pic3 + ","+ company_info);
		memberDAO dao = new memberDAO();
		int cnt = dao.sellerjoin(member_id, member_pw, company_name, company_bn, b_type, company_pic1, company_pic2, company_pic3, company_info);
		System.out.println("서블릿" + cnt);
		if(cnt>0) {
			response.setCharacterEncoding("euc-kr");
			response.setContentType("text/html; charset=euc-kr");
			PrintWriter out = response.getWriter();
			out.print("<script language='javascript' charset='euc-kr'>");
			out.print("alert('판매자 등록 완료!');");
			out.print("location.href='main.jsp'");
			out.print("</script>");
		}
			
		else{
			
			response.setCharacterEncoding("euc-kr");
			response.setContentType("text/html; charset=euc-kr");
			PrintWriter out = response.getWriter();
			out.print("<script language='javascript' charset='euc-kr'>");
			out.print("alert('아이디나 비밀번호가 올바르지 않습니다.');");
			out.print("location.href='sellerjoin.html'");
			out.print("</script>");
		}

}
}
