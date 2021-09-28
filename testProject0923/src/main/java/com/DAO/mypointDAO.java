package com.DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.VO.MemberVO;

public class mypointDAO {

	// 공통
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
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void close() {
		try {
			if (rs != null) {
				rs.close();
			}
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
	
	// 찜 성공 데이터 입력
	public int insert_point(int article_seq, Date success_date, String member_id, String success_pic1, String success_pic2, String success_pic3) {
	
		int cnt = 0;
		try {
			conn();

			String sql = "insert into mypoints(article_seq, success_date, member_id, success_pic1, success_pic2, success_pic3) values(?, ?, SYSDATE, ?, ?, ?, ?)";

			PreparedStatement psmt = conn.prepareStatement(sql);

			psmt.setInt(1, article_seq);
			psmt.setDate(2, success_date);
			psmt.setString(3, member_id);
			psmt.setString(4, success_pic1);
			psmt.setString(5, success_pic2);
			psmt.setString(6, success_pic3);

			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
		
	}
	
	
	// 찜 성공 횟수 인한 포인트 계산	
	public int select_count_point(String member_id) {
		
		int a = 0; // 찜 성공 횟수
		
		try {
			conn();
			
			String sql = "select article_seq from mypoints where member_id = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, member_id);

			rs = psmt.executeQuery();

			if (rs.next()) {
				a += 1;			
			} 
			
		} catch (Exception e) {
			// 실행 후 오류가 발생했을 때 에러 출력
			e.printStackTrace();
		} finally {
			close();
		}
		
		a *= 10;		
		
		return a;
	}
	
	
	// 찜 성공 사진 갯수로 인한 포인트 계산
	public int select_picture_point(String member_id) {		
		
		int b = 0; // 찜 성공 사진 갯수
		
		try {
			conn();

			for(int i = 1; i<4 ; i++) {
				String sql = String.format("select success_pic%s from mypoints where member_id = ?", i);
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, member_id);

				rs = psmt.executeQuery();

				if (rs.next()) {
					b += 1;			
				}
			}
			
		} catch (Exception e) {
			// 실행 후 오류가 발생했을 때 에러 출력
			e.printStackTrace();
		} finally {
			close();
		}
		
		b *= 2;
				
		return b;
		
	}

	
	
	
	
	
}
