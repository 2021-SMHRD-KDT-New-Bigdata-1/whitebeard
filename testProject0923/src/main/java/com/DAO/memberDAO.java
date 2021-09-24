package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class memberDAO {

	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs =null;
	
	public void conn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String dbid = "cgi_6_2";
			String dbpw = "smhrd2";
			conn = DriverManager.getConnection(url, dbid, dbpw);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	public void close() {
		try {
			if(rs!=null) {
				rs.close();
			}
			if(psmt!=null) {
				psmt.close();
			}
			if(conn!=null) {
				conn.close();
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public int join(String id, String pw, String name, String date, String nick, String email, String phone) {
		int cnt = 0;
		try {
			conn();
		
			String sql = "insert into members(member_id, member_pw, name, birth_date, nickname, email, phone, member_type) values(?, ?, ?, ?, ?, ?, ?, 0)";
		
			PreparedStatement psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, id);
			psmt.setString(2, pw);
			psmt.setString(3, name);
			psmt.setString(4, date);		
			psmt.setString(5, nick);
			psmt.setString(6, email);
			psmt.setString(7, phone);
			
			cnt = psmt.executeUpdate();  

		}catch(Exception e){
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
	}
	
	public boolean idCheck(String id) {

		boolean check = false;
		conn();

		String sql = "select member_id from members where member_id = ?";

		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			rs = psmt.executeQuery();

			if(rs.next()) {  
				check = true;
			}else {   
				check = false;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return check;



	}



}
