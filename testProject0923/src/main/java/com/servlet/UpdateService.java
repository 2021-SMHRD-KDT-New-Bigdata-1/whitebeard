package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.memberDAO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/UpdateService")
public class UpdateService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("euc-kr");

		String saveDri = request.getServletContext().getRealPath("uploadedFiles");
		System.out.println(saveDri);
		int maxSize = 5 * 1024 * 1024;
		String encoding = "EUC-KR";

		MultipartRequest multi = new MultipartRequest(request, saveDri, maxSize, encoding,
				new DefaultFileRenamePolicy());

		String member_id = multi.getParameter("id");
		String nowpw = multi.getParameter("nowpw");
		String member_pw = multi.getParameter("pw");
		String name = multi.getParameter("name");
		String nick = multi.getParameter("nick");
		String email = multi.getParameter("email");
		String phone = multi.getParameter("phone");
		String yy = multi.getParameter("yy");
		String mm = multi.getParameter("mm");
		String dd = multi.getParameter("dd");
		String date = yy + "/" + mm + "/" + dd;
		String file = URLEncoder.encode(multi.getFilesystemName("file"), "EUC-KR");

		/*
		 * String member_id = request.getParameter("id"); String nowpw =
		 * request.getParameter("nowpw"); String member_pw = request.getParameter("pw");
		 * String name = request.getParameter("name"); String nick =
		 * request.getParameter("nick"); String email = request.getParameter("email");
		 * String phone = request.getParameter("phone"); String company_pic1 =
		 * request.getParameter("company_pic1");
		 * 
		 * String yy = request.getParameter("yy"); yy = yy.substring(2); String mm =
		 * request.getParameter("mm"); String dd = request.getParameter("dd"); String
		 * date = yy+"/"+mm+"/"+dd;
		 */

		memberDAO dao = new memberDAO();
		int cnt = dao.update(nowpw, member_pw, name, date, nick, email, phone, file, member_id);

		if (cnt > 0) {
			response.setCharacterEncoding("euc-kr");
			response.setContentType("text/html; charset=euc-kr");
			PrintWriter out = response.getWriter();

			out.print("<script language='javascript' charset='euc-kr'>");
			out.print("alert('ȸ������ ���� �Ϸ�.');");
			out.print("location.href='mypage.jsp'");
			out.print("</script>");
		} else {

			response.setCharacterEncoding("euc-kr");
			response.setContentType("text/html; charset=euc-kr");
			PrintWriter out = response.getWriter();

			out.print("<script language='javascript' charset='euc-kr'>");
			out.print("alert('�Է��� ������ �ٸ��� �ʽ��ϴ�.');");
			out.print("location.href='update.html'");
			out.print("</script>");

		}
	}

}
