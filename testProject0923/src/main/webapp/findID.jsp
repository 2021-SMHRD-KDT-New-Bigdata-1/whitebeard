<%@page import="com.DAO.memberDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
body{
    height: 100%;
    background: #f5f6f7 ;
}
#idpage{
    top: 15%;
    left: 50%;
    position: absolute;
    transform: translate(-50%);
    text-align: center;
    width: 460px;
    margin: auto;
}
header{
    text-align: left;
}
#check{
    left: 50%;
    top: 70%;
    width: 100%;
    height: 500px;
    position: absolute;
    transform: translate(-50%);
    text-align: center;
    background: white;
}
.fontsize{
    font-size: 25px;
}
a{
    text-decoration: none;
    color: inherit;
}
</style>
</head>
<body>

	<%
		String member_id = (String)session.getAttribute("member_id");
		String name = (String)session.getAttribute("name");
	 %>
<form>
	<div id = "idpage">
        <header>
            <h2>아이디 찾기</h2>
        <div id = "check">
            <br>
            <br>
            <br>
            <br>
            
            <span class="fontsize">
                <p><%=name%> 님의 아이디는</p>
                <p>"<%=member_id %>"입니다.</p>
            </span>
            <br>
            <br>
            <br>
            <br>
            <br>
            
            
            <!-- 버튼 디자인 변경해야함 -->
            <span>
                <button><a href="main.jsp">홈화면이동</a></button>
            </span>
            <span>
                <button><a href = "login.html">로그인</a></button>
            </span>
        </div>
    </div>
</form>
<%
System.out.println(name);
System.out.println(member_id);
%>
</body>
</html>