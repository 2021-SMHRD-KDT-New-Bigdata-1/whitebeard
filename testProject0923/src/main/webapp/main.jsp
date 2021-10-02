<%@page import="com.DAO.mypointDAO"%>
<%@page import="com.DAO.mychoiceDAO"%>
<%@page import="com.VO.MyPointVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.VO.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/myzzim.css">
</head>
<body>
	<%
	MemberVO vo = (MemberVO)session.getAttribute("vo");
	%>
	
	<div class="wrap">
        <div class="mypage">
	 
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
		out.print("<li><a href='myzzim.jsp'>��������</a></li>");
		out.print("<li><a href='sellerjoin.html'>�Ǹ��ڵ��</a></li>");
		out.print("<li><a href='LogoutCon.java'>�α׾ƿ�</a></li>");
		out.print("</ul>");
			}
	%>
	
	<%
	ArrayList<MyPointVO> successList = new ArrayList<MyPointVO>();
	mypointDAO p_dao = new mypointDAO();
	mychoiceDAO c_dao = new mychoiceDAO();
	%>
	
	<section>
		<!-- �ּ��߰� -->
		<!-- �� �� ��� (���� ���� SNS ���� ����) -->
		<div>�� �� ���</div><br>
		<div><% if(c_dao.select_my_choice(vo.getMember_id()) == null) {
			out.print("<div> �� �� ��� ���� </div>");
		} else { %>
			<%=c_dao.select_my_choice(vo.getMember_id())%>					
		<%} %>
		</div><br>
		
		
		<!-- ���� �� ������ ����Ʈ (SNS ���� ����) -->
		<div>�� �� ���� ���</div>
		<div><% if(p_dao.select_my_choice(vo.getMember_id()) == null) {
			out.print("<div> �� �� ���� ���� ����</div>");
		} else { %>
			<%=p_dao.select_my_choice(vo.getMember_id())%>					
		<%} %>
		</div><br>
		
		<!-- ���� ������ ��, ���� ���� �ø���  -->
		<div>�� ���� ���� �ø���</div><br>
		<div></div><br>
		
		<div>�� ���� ���� �����ϱ�</div><br>
		<div><% if(p_dao.select_picture(vo.getMember_id()) == null) {
		out.print("<div> �� �� ���� ���� ���� </div>");
		} else { %>
			<%=p_dao.select_picture(vo.getMember_id())%>					
		<%} %>
		</div><br>
		
		<!-- �� ���� ����Ʈ (���ΰ�ħ ��ư ������ ������Ʈ) -->
		<form action="MyPointService">
		<div>�� ���� ����Ʈ : <%=session.getAttribute("mypoint")%>
		<button type="submit">���ΰ�ħ</button></div>
		</form><br>
		
	</section>
	
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