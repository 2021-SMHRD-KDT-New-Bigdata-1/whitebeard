<%@page import="java.sql.SQLException"%>
<%@page import="com.VO.MemberVO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>//
<%
	MemberVO vo = (MemberVO) session.getAttribute("vo");
	%>
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
	String id = "cgi_6_2";
	String pass = "smhrd2";
	int idx = Integer.parseInt(request.getParameter("idx"));
		try{
			request.setCharacterEncoding("euc-kr");
			Connection conn = DriverManager.getConnection(url,id,pass); 
			Statement stmt = conn.createStatement(); 
	
			String title = request.getParameter("ano_subject");
			String memo = request.getParameter("memo");		
		
			String sql = "SELECT ano_seq FROM anonymous WHERE ano_seq=" + idx;
			ResultSet rs = stmt.executeQuery(sql);
		
		 if(rs.next()){
			 vo = (MemberVO) session.getAttribute("vo");		 
			 }
		
		 if(vo != null) {
				sql = "UPDATE anonymous SET ano_subject='" + title+ "' ,ano_content='"+ memo +"' WHERE ano_seq=" + idx;				
				stmt.executeUpdate(sql);
				
%>
				  <script language=javascript>
				  	self.window.alert("changed.");
				  	location.href="dbr.jsp?idx=<%=idx%>";
				  </script>
<%

			rs.close();
			stmt.close();
			conn.close();
			
		} else {
%>
			<script language=javascript>
				self.window.alert("notuser.");
				location.href="javascript:history.back()";
			</script>
<%			
		}
		 
 } catch(SQLException e) {
	out.println( e.toString() );
} 

%>
</html>