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
#pwpage{
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
		String member_pw = (String)session.getAttribute("member_pw");
		String id = (String)session.getAttribute("id");
	 %>
<form>
	<div id = "pwpage">
        <header>
            <h2>��й�ȣ ã��</h2>
        <div id = "check">
            <br>
            <br>
            <br>
            <br>
            
            <span class="fontsize">
                <p><%=id %>���� ��й�ȣ��.</p>
                <p>"<%=member_pw%>"�Դϴ�.</p>
            </span>
            <br>
            <br>
            <br>
            <br>
            <br>
            
            
            <!-- ��ư ������ �����ؾ��� -->
            <span>
                <button><a href="main.jsp">Ȩȭ���̵�</a></button>
            </span>
            <span>
                <button><a href = "login.html">�α���</a></button>
            </span>
        </div>
    </div>
</form>
<%
System.out.println(id);
System.out.println(member_pw);

%>
</body>
</html>