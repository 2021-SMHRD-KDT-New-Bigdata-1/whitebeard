package com.DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.VO.SnsVO;

public class snsDAO {

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
		
		
		// SNS 작성 데이터 입력
		public int insert_sns(String member_id, String subject, String content, String pic1, String pic2, String pic3, int regular_price, int discount_price, int sale_price, Date input_date) {
		
			int cnt = 0;
			try {
				conn();

				String sql = "insert into sns(member_id, subject, content, pic1, pic2, pic3, regular_price, discount_price, sale_price, input_date) values(?, ?, ?, ?, ?, ?, ?, ?, ?, SYSDATE)";

				PreparedStatement psmt = conn.prepareStatement(sql);

				psmt.setString(1, member_id);
				psmt.setString(2, subject);
				psmt.setString(3, content);
				psmt.setString(4, pic1);
				psmt.setString(5, pic2);
				psmt.setString(6, pic3);
				psmt.setInt(7, regular_price);
				psmt.setInt(8, discount_price);
				psmt.setInt(9, sale_price);

				cnt = psmt.executeUpdate();

			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				close();
			}
			return cnt;	
			
		}
		
		
		// SNS 수정
		public int update_sns(int article_seq, String subject, String content, String pic1, String pic2, String pic3, int regular_price, int discount_price, int sale_price) {
			
			int cnt = 0;
			
			try {
	            conn();
	             
	            String sql = "update sns set subject=?, content=?, pic1=?, pic2=?, pic3=?, regular_price=?, discount_price=?, sale_price=? where member_id = ?";
	             		
	            psmt = conn.prepareStatement(sql);
	            psmt.setString(1, subject);
				psmt.setString(2, content);
				psmt.setString(3, pic1);
				psmt.setString(4, pic2);
				psmt.setString(5, pic3);
				psmt.setInt(6, regular_price);
				psmt.setInt(7, discount_price);
				psmt.setInt(8, sale_price);
				psmt.setInt(9, article_seq);
	                          
	            cnt = psmt.executeUpdate();      	      
		         
		      } catch (Exception e) {
		         e.printStackTrace();
		      } finally {
		    	  close();
		      }
		      
			  return cnt;
			
		}


		// SNS 삭제
		public int delete_sns(int article_seq) {
			
			int cnt = 0;
			
			try {
	            conn();
	             
	            String sql = "delete * from sns where article_seq = ?";
	             		
	            psmt = conn.prepareStatement(sql);	          
				psmt.setInt(1, article_seq);
	                          
	            cnt = psmt.executeUpdate();      	      
		         
		      } catch (Exception e) {
		         e.printStackTrace();
		      } finally {
		    	  close();
		      }
		      
			  return cnt;
			
		}


		
		
}
