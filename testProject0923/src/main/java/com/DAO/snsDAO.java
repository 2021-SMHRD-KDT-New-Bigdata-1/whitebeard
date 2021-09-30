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
	             
	            String sql = "update sns set subject=?, content=?, pic1=?, pic2=?, pic3=?, regular_price=?, discount_price=?, sale_price=? input_date=SYSDATE where article_seq = ?";
	             		
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

		
		// 동네 이름 기준으로 모든 SNS 불러오기
		public ArrayList<SnsVO> select_all_sns(String town) {
			
			ArrayList<SnsVO> snsList = new ArrayList<SnsVO>();

			try {
				
				conn();	               				
				String sql = "select * from sns A where member_id = (select member_id from members B where company_info = '%?%' and A.member_id = B.member_id group by member_id)";
				psmt = conn.prepareStatement(sql);
	            psmt.setString(1, town);               
	            
	            rs = psmt.executeQuery();
	            
	            while(rs.next()) {
	            	int article_seq = rs.getInt(1);
	            	String member_id = rs.getString(2);
	            	String subject = rs.getString(3);
	            	String content = rs.getString(4);
	            	String pic1 = rs.getString(5);
	            	String pic2 = rs.getString(6);
	            	String pic3 = rs.getString(7);
	            	int regular_price = rs.getInt(8);
	            	int discount_price = rs.getInt(9);
	            	int sale_price = rs.getInt(10);
	            	Date input_date = rs.getDate(11);
	            		            		            	
	            	snsList.add(new SnsVO(article_seq, member_id, subject, content, pic1, pic2, pic3, regular_price, discount_price, sale_price, input_date));
	            }
	            
	            }catch(Exception e){
	            	e.printStackTrace();
	            }finally {
	            	close();
	            }
			
			return snsList;		
			
		}
		
		
		// 한 가게의 SNS만 불러오기
		public ArrayList<SnsVO> select_market_sns(String member_id) {
			
			ArrayList<SnsVO> oneSnsList = new ArrayList<SnsVO>();

			try {
				
				conn();	               				
				String sql = "select * from sns where member_id = ?";
				psmt = conn.prepareStatement(sql);
	            psmt.setString(1, member_id);               
	            
	            rs = psmt.executeQuery();
	            
	            while(rs.next()) {
	            	int article_seq = rs.getInt(1);
	            	member_id = rs.getString(2);
	            	String subject = rs.getString(3);
	            	String content = rs.getString(4);
	            	String pic1 = rs.getString(5);
	            	String pic2 = rs.getString(6);
	            	String pic3 = rs.getString(7);
	            	int regular_price = rs.getInt(8);
	            	int discount_price = rs.getInt(9);
	            	int sale_price = rs.getInt(10);
	            	Date input_date = rs.getDate(11);
	            		            		            	
	            	oneSnsList.add(new SnsVO(article_seq, member_id, subject, content, pic1, pic2, pic3, regular_price, discount_price, sale_price, input_date));
	            }
	            
	            }catch(Exception e){
	            	e.printStackTrace();
	            }finally {
	            	close();
	            }
			
			return oneSnsList;		
			
		}
		
		
		// 랜덤 가게의 최신 SNS만 불러오기
		public ArrayList<SnsVO> select_random_sns() {
			
			ArrayList<SnsVO> randomSnsList = new ArrayList<SnsVO>();

			try {
				
				conn();	               				
				String sql = "select * from sns where article_seq is not null order by article_seq desc";
				psmt = conn.prepareStatement(sql);
	            
	            rs = psmt.executeQuery();
	            
	            while(rs.next()) {
	            	int article_seq = rs.getInt(1);
	            	String member_id = rs.getString(2);
	            	String subject = rs.getString(3);
	            	String content = rs.getString(4);
	            	String pic1 = rs.getString(5);
	            	String pic2 = rs.getString(6);
	            	String pic3 = rs.getString(7);
	            	int regular_price = rs.getInt(8);
	            	int discount_price = rs.getInt(9);
	            	int sale_price = rs.getInt(10);
	            	Date input_date = rs.getDate(11);
	            		            		            	
	            	randomSnsList.add(new SnsVO(article_seq, member_id, subject, content, pic1, pic2, pic3, regular_price, discount_price, sale_price, input_date));
	            }
	            
	            }catch(Exception e){
	            	e.printStackTrace();
	            }finally {
	            	close();
	            }
			
			return randomSnsList;		
			
		}		
        //검색 기능		
		public ArrayList<SnsVO> search(String want) {
			
			ArrayList<SnsVO> searchList = new ArrayList<SnsVO>();
			
				try {
				
				conn();	               				
				String sql = "select * from sns where subject like ?";
				psmt = conn.prepareStatement(sql);
	            psmt.setString(1, "%"+want+"%");               
	            
	            rs = psmt.executeQuery();
	            
	            while(rs.next()) {
					/* System.out.println("가져와짐:"+rs.getInt(1)); */
	            	int article_seq = rs.getInt(1);
	            	String member_id = rs.getString(2);
	            	want = rs.getString(3);
	            	String content = rs.getString(4);
	            	String pic1 = rs.getString(5);
	            	String pic2 = rs.getString(6);
	            	String pic3 = rs.getString(7);
	            	int regular_price = rs.getInt(8);
	            	int discount_price = rs.getInt(9);
	            	int sale_price = rs.getInt(10);
	            	Date input_date = rs.getDate(11);	
	            	
	            	searchList.add(new SnsVO(article_seq, member_id, want, content, pic1, pic2, pic3, regular_price, discount_price, sale_price, input_date));
	            }
	            
	            }catch(Exception e){
	            	e.printStackTrace();
	            }finally {
	            	close();
	            }
				
			return searchList;
			
		}
		
}
