package com.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/JoinService")
public class JoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	request.setCharacterEncoding("euc-kr");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String pwcheck = request.getParameter("pwcheck");
	String name = request.getParameter("name");
//	String[] birth = request.getParameterValues("birth");
	String nick = request.getParameter("nick");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
//	Date birth = request.getParameter("birth");
	
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
		String dbid = "cgi_6_2";
		String dbpw = "smhrd2";
		Connection conn = DriverManager.getConnection(url, dbid, dbpw);
	
		if(conn!=null) {
			System.out.println("¿¬°á");
		}
		String sql = "insert into members(member_id, member_pw, name, nickname, email, phone, member_type) values(?, ?, ?, ?, ?, ?, 0)";
	
		PreparedStatement psmt = conn.prepareStatement(sql);
		
		psmt.setString(1, id);
		psmt.setString(2, pw);
		psmt.setString(3, name);
//		psmt.setString(4, birth);
		psmt.setString(4, nick);
		psmt.setString(5, email);
		psmt.setString(6, phone);
		
		int cnt = psmt.executeUpdate();  
		
		if(cnt>0) {
			response.sendRedirect("joincomplete.html");
			
		}
	}catch(Exception e){
		e.printStackTrace();
	}
	
	
	
	
			
	
	}

}
