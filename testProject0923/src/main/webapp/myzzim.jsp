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
	
	<!-- 상단 메뉴 -->	
	<nav class='navbar'>
	<div class='navbar__logo'>로고 자리</div>
	<div class='navbar__main' onclick="location.href='main.jsp'">할인2동</div>
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