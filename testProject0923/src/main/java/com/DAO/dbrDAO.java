package com.DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.VO.MemberVO;

public class dbrDAO {

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

	public int write(String ano_subject, String ano_content, String ano_pic1, String ano_pic2, String ano_pic3) {
		int cnt = 0;
		try {
			conn();
			//글제목 사진 1 2 3 이름 시간 글내용 댓글~~~ 이코드는 담벼락 글 작성하는 녀석입니다
			String sql = "insert into anonymous(ano_subject,ano_content,ano_pic1,ano_pic2,ano_pic3) values(?, ?, ?, ?,?, SYSDATE)";

			PreparedStatement psmt = conn.prepareStatement(sql);

			
			psmt.setString(1, ano_subject); //글제목
			psmt.setString(2, ano_content); //글내용
			psmt.setString(3, ano_pic1); //글사진
			psmt.setString(4, ano_pic2); //글사진
			psmt.setString(5, ano_pic3); //글사진
			

			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	public int write_com(String anocom_content) {
		int cnt = 0;
		try {
			conn();
			//글제목 사진 1 2 3 이름 시간 글내용 댓글~~~ 이코드는 담벼락 글 작성하는 녀석입니다
			String sql = "insert into anocomments(anocom_content) values(?, SYSDATE)";

			PreparedStatement psmt = conn.prepareStatement(sql);

			
			
			psmt.setString(1, anocom_content); //글내용
			
			

			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	
	
	public int edit(String ano_subject, String ano_content, String ano_pic1, String ano_pic2, String ano_pic3) {
		
		int cnt = 0;
		
		try {
            conn();
             
            String sql = "update anonymous set ano_subject=?, ano_content=?, ano_pic1=?, ano_pic2=?, ano_pic3=?,input_date=SYSDATE where member_id = ?";
             		
			psmt.setString(1, ano_subject); //글제목
			psmt.setString(2, ano_content); //글내용
			psmt.setString(3, ano_pic1); //글사진
			psmt.setString(4, ano_pic2); //글사진
			psmt.setString(5, ano_pic3); //글사진
                          
            cnt = psmt.executeUpdate();      	      
	         
	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	    	  close();
	      }
	      
		  return cnt;
		
	}
	
	public int edit_com(String anocom_content) {
		int cnt = 0;
		try {
			conn();
			//글제목 사진 1 2 3 이름 시간 글내용 댓글~~~ 이코드는 담벼락 글 작성하는 녀석입니다
			String sql = "update anocomments set(anocom_content) values(?, SYSDATE)";

			PreparedStatement psmt = conn.prepareStatement(sql);

			
			
			psmt.setString(1, anocom_content); //글내용
			
			

			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}

	
	
	public int delete(int ano_seq) {
		
		int cnt = 0;
		
		try {
            conn();
             
            String sql = "delete * from anonymouse where ano_seq = ?";
             		
            psmt = conn.prepareStatement(sql);	          
			psmt.setInt(1, ano_seq);
                          
            cnt = psmt.executeUpdate();      	      
	         
	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	    	  close();
	      }
	      
		  return cnt;
		
	}
	
	public int delete_com(int anocom_seq) {
		
		int cnt = 0;
		
		try {
            conn();
             
            String sql = "delete * from anocom_content where anocom_seq = ?";
             		
            psmt = conn.prepareStatement(sql);	          
			psmt.setInt(1, anocom_seq);
                          
            cnt = psmt.executeUpdate();      	      
	         
	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	    	  close();
	      }
	      
		  return cnt;
		
	}
	


	
	
	
	
	
	
	
	
}
	
	
	
	
	
	
	
	
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

