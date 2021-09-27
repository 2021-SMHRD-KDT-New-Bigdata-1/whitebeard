package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.VO.MemberVO;

public class member {
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	
	public void conn() {
		try {
				Class.forName("oracle.jdbc.driver.OracleDriver");

				String url = "\"jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe\"";
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
	
	//�α��� ���
		public MemberVO login(String member_id, String member_pw) {
			MemberVO vo = null;
			try {

				conn();

				// 2-4. sql�� �غ��ϱ�
				String sql = "select * from members where member_id = ? and member_pw = ?";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, member_id);
				psmt.setString(2, member_pw);

				// 2-5. sql�� �����ϱ�
				rs = psmt.executeQuery();

				if (rs.next()) {
					String tel = rs.getString(3);
					
					// �α��� ����
					vo = new MemberVO(email, phone, address);
					//���ο� ������Ÿ�� = VO
				} 
				
			} catch (Exception e) {
				// ���� �� ������ �߻����� �� ���� ���
				e.printStackTrace();
			} finally {
				close();
			}
			
			return vo;
			
			
		}
	
	
	
	
}
