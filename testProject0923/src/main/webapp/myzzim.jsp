<%@page import="com.VO.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/main.css">
</head>
<body>
	<%
	MemberVO vo = (MemberVO)session.getAttribute("vo");
	%>
	
	<!-- ��� �޴� -->	
	<nav class='navbar'>
	<div class='navbar__logo'>�ΰ� �ڸ�</div>
	<div class='navbar__main' onclick="location.href='main.jsp'">����2��</div>
	<% 
	if (vo == null) {
		out.print("<div class='' onclick='location.href=\"login.jsp\"'>�α���</div></nav>");        
	} else {
		out.print("<div class='navbar__profile'>������</div></nav>");
		out.print("<ul class='navbar__menu'>");
		out.print("<li><a href='mypage.jsp'>����������</a></li>");
		out.print("<li><a href=''>����ǥ</a></li>");
		out.print("<li><a href=''>������</a></li>");
		out.print("<li><a href=''>�Ǹ��ڵ��</a></li>");
		out.print("<li><a href='LogoutCon.java'>�α׾ƿ�</a></li>");
		out.print("</ul>");
			}
	%>
	
	
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