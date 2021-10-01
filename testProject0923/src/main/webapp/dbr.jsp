<%@page import="java.sql.SQLException"%>
<%@page import="com.VO.MemberVO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<% Class.forName("oracle.jdbc.driver.OracleDriver"); 
	String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe"; 
	String id = "cgi_6_2"; 
	String pass = "smhrd2"; 
	int idx = Integer.parseInt(request.getParameter("ano_seq")); 
	try { 
		Connection conn = DriverManager.getConnection(url,id,pass); 
		Statement stmt = conn.createStatement(); 
		String sql = "SELECT ano_seq,ano_subject, ano_content,ano_pic1,ano_pic2,ano_pic3,member_id,ano_date FROM anonymous WHERE ano_seq=" + idx; ResultSet rs = stmt.executeQuery(sql);
		if(rs.next()){ 
			String ano_seq = rs.getString(1); 
			String ano_subject = rs.getString(2); 
			String ano_content = rs.getString(3); 
			String ano_pic1 = rs.getString(4); 
			String ano_pic2 = rs.getString(5); 
			String ano_pic3 = rs.getString(6); 
			String ano_date = rs.getString(8); 
			%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>
<link rel="stylesheet" href="assets/css/dbr.css" />
<script src="http://code.jquery.com/jquery-latest.js"></script>
<style>
#wrapper {
   position: relative;
   height: 100%;
}

#content {
   left: 50%;
   position: absolute;
   transform: translate(-50%);
   text-align: center;
   width: 460px;
   margin: auto;
}

html, body {
   margin: 0;
}

a {
   text-decoration: none;
   color: black;
}

/*  */
.navbar {
   background-color: burlywood;
   display: flex;
   justify-content: space-between;
   align-items: center;
   padding: 8px 12px;
}

.navbar__profile {
   display: flex;
   list-style: none;
}

.navbar__menu {
   width: 20%;
   padding-left: 0;
   display: none;
   flex-direction: column;
   list-style: none;
}

.navbar__menu li {
   padding: 8px 12px;
}

.navbar__menu li:hover {
   background-color: cornflowerblue;
   border-radius: 4px;
}

.navbar__menu.active {
   background-color: darkgray;
   float: right;
   display: flex;
   flex-direction: column;
}

#dbr {
   text-align: center;
}

#dbr_box {
   border: blueviolet solid 1px;
   width: auto;
   height: auto;
}

#dbr_box_body {
   border: darkblue solid 1px;
   width: auto;
   height: auto;
}

#dbr_box_tail {
   border: black solid 1px;
   width: auto;
   height: auto;
}

#coment_box {
   width: 850px;
   height: auto;
}

#dbr_box_body_title {
   text-align: center;
}

#dbr_box_body_name {
   text-align: right;
   font-size: 20px;
}

#dbr_box_body_time {
   font-size: small;
   color: gray;
   text-align: right;
}

#dbr_box_body_text {
   margin: 5px;
}

#dbr_box_body_img {
   text-align: center;
}

#form-commentInfo {
   width: 100%;
}

#comment-count {
   margin-bottom: 10px;
}

#comment-input {
   width: 50%;
   height: 3.3em;
}

#submit {
   background-color: rgb(0, 128, 255);
   width: 5.5em;
   height: 3.3em;
   font-size: 15px;
   font-weight: bold;
   color: aliceblue;
}

#voteUp, #voteDown {
   width: 3.5em;
   height: 1.9em;
   background-color: aqua;
}

#comments {
   margin-top: 10px;
}

.eachComment {
   width: 50%;
   margin: 10px;
   padding: 0.5em;
   border-bottom: 1px solid #c1bcba;
}

.eachComment .name {
   font-size: 1.5em;
   font-weight: bold;
   margin-bottom: 0.3em;
   display: flex;
   justify-content: space-between;
}

.eachComment .inputValue {
   font-size: 1.2em;
   font-style: italic;
}

.eachComment .time {
   font-size: 0.7em;
   color: #c1bcba;
   font-style: oblique;
   margin-top: 0.5em;
   margin-bottom: 0.5em;
}

.eachComment .voteDiv {
   display: flex;
   justify-content: flex-end;
}

.eachComment .deleteComment {
   background-color: red;
   color: aliceblue;
}

#comments>div:nth-child(1n) {
   border: 1px solid;
}
</style>
</head>
<body>
   <%
   MemberVO vo = (MemberVO) session.getAttribute("vo");
   %>


   <div id="wrapper">
      <div id="content">
         <nav class="navbar">
            <div class="navbar__logo">로고 자리</div>

            <div class="navbar__main" onclick="location.href='main.jsp'">할인2동</div>

            <%
            if (vo == null) {
               out.print("<div class='' onclick='location.href=\"login.jsp\"'>로그인</div></nav>");

            } else {
               out.print("<div class='navbar__profile'>프로필</div></nav>");
               out.print("<ul class='navbar__menu'>");
               out.print("<li><a href='mypage.jsp'>마이페이지</a></li>");
               out.print("<li><a href=''>순위표</a></li>");
               out.print("<li><a href=''>내찜목록</a></li>");
               out.print("<li><a href=''>판매자등록</a></li>");
               out.print("<li><a href='LogoutCon.java'>로그아웃</a></li>");
               out.print("</ul>");
            }
            %>
            <div>
               <h1 id="dbr">담벼락</h1>
               <table>
  <tr>
   <td>
    <table width="100%" cellpadding="0" cellspacing="0" border="0">
     <tr style="background:url('img/table_mid.gif') repeat-x; text-align:center;">
      <td width="5"><img src="img/table_left.gif" width="5" height="30" /></td>
      <td>내 용</td>
      <td width="5"><img src="img/table_right.gif" width="5" height="30" /></td>
     </tr>
    </table>
   <table width="413">
     <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76">글번호</td>
      <td width="319"><%=ano_seq%></td>
      <td width="0">&nbsp;</td>
     </tr>
	 <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
    <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76">이름</td>
      <td width="319">익명</td>
      <td width="0">&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
    <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76">작성일</td>
      <td width="319"><%=ano_date%></td>
      <td width="0">&nbsp;</td>
     </tr>
      <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
    <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76">제목</td>
      <td width="319"><%=ano_subject%></td>
      <td width="0">&nbsp;</td>
     </tr>
     
     
     <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
     <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76">내용</td>
      <td width="319"><%=ano_pic1%><%=ano_pic2%><%=ano_pic3%><%=ano_content%></td>
      
      
      <td width="0">&nbsp;</td>
     </tr>
     
     
     <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
     
                
 <% 
  	stmt.executeUpdate(sql);
 	rs.close();
 	stmt.close();
 	conn.close();
	 	} 
	}catch(SQLException e) {
}

%>



     <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
     <tr height="1" bgcolor="#82B5DF"><td colspan="4" width="407"></td></tr>
     <tr align="center">
      <td width="0">&nbsp;</td>
      <td colspan="2" width="399"><input type=button value="글쓰기"  OnClick="window.location='dbr_write.jsp'">
	
	<input type=button value="목록" OnClick="window.location='main.jsp'">
	
	<input type=button value="수정" OnClick="window.location='dbr_edit.jsp?idx=<%=idx%>'">
	<input type=button value="삭제">
      <td width="0">&nbsp;</td>
     </tr>
    </table>
   </td>
  </tr>
 </table>
            </div>
      </div>
   </div>
   <script>
      $(".navbar__profile").click(function(){
           if($(".navbar__menu").attr('class')=='navbar__menu'){
              $(".navbar__menu").addClass("active");
           }else{
              $(".navbar__menu").removeClass("active");
           }   
        });
      </script>
</body>
</html>