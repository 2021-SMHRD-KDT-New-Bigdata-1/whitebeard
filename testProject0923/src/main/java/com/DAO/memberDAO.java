package com.DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.VO.MemberVO;

public class memberDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	
	public void conn() {
		try {
				Class.forName("oracle.jdbc.driver.OracleDriver");

				String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
				String dbid = "cgi_6_2";
				String dbpw = "smhrd2";
				conn = DriverManager.getConnection(url, dbid, dbpw);	
		} catch(Exception e) {
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
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	//로그인 기능
		public MemberVO login(String member_id, String member_pw) {
			MemberVO vo = null;
			try {

				conn();

				// 2-4. sql문 준비하기
				String sql = "select * from members where member_id = ? and member_pw = ?";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, member_id);
				psmt.setString(2, member_pw);

				// 2-5. sql문 실행하기
				rs = psmt.executeQuery();

				if (rs.next()) {
					String name = rs.getString(3);
					Date birth_date = rs.getDate(4);
					String nickname = rs.getString(5);
					String email = rs.getString(6);
					String phone = rs.getString(7);
					String member_type = rs.getString(8);
					String company_name = rs.getString(9);
					String company_bn = rs.getString(10);
					String b_type = rs.getString(11);
					String company_pic1 = rs.getString(12);
					String company_pic2 = rs.getString(13);
					String company_pic3 = rs.getString(14);
					String company_info = rs.getString(15);
					
					vo = new MemberVO(name, birth_date, nickname, email, phone, member_type, company_name,
							company_bn, b_type, company_pic1, company_pic2, company_pic3, company_info);
				} 
				
			} catch (Exception e) {
				// 실행 후 오류가 발생했을 때 에러 출력
				e.printStackTrace();
			} finally {
				close();
			}
			
			return vo;
			
			
		}
	
	
	
	
}
