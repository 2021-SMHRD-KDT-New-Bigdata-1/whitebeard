<%@page import="com.VO.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/main.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
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



    
    <!-- �˻� -->
    <form action="" class="searchBar">
        <input type="text" placeholder="�˻�(��ǰ��, ������)">    
            <button>�˻�</button>
    </form><br>


	<!-- ��ư 3�� -->
    <div align="center">
        <span class="simpleLookBtn" style="display:inline"><button>������</button></span>
        <button class="closerLookBtn" style="display:inline">�ڼ���</button>
        <span class="secretLookBtn" style="display:inline"><button>�㺭��</button></span>
    </div><br>
    
    
    <!-- ������ ������  -->
    <section>
    	<div class="simpleLook" onclick="location.href='sns.jsp'">
		    <span class=""><img src="" alt="">��⿣ �̹����� �־��ּ���</span>
		    <span>���� ����</span>
		    <span>��ȣ�� ����</span>
    	</div>  
    
    
    <!-- �ڼ��� ������  -->
	
		<div class="closerLook" onclick="location.href='sns.jsp'" style = "display : none;">
	    	<span class=""><img src="" alt="">��⿣ �̹����� �־��ּ���</span>
	    	<span>���� ����</span>
	    	<span>��ȣ�� ����</span>
	    	<span>�Խ��� ����</span>
	    	<span>�Խñ� ����</span>
	    	<span>���� ����</span>
	    	<span>���ΰ� ����</span>
	    	<span>�ǸŰ� ����</span>
    	</div>
    
    
    <!-- �㺭�� -->
    	<div class="secretLook" onclick="location.href='dbr.jsp'" style = "display : none;">
	    	<span class=""><img src="" alt="">��⿣ �̹����� �־��ּ���</span>
	    	<span>���� ����</span>
	    	<span>�͸� ����</span>
	    </div>
    </section>

	<!-- <script src="js/jquery-3.6.0.min.js"></script> -->
    <script>
    
    	/* ������ �޴� Ŭ�� */
      /*   const click__profile = document.querySelector('.navbar__profile');
        const click__profile2 = document.querySelector('.navbar__menu');
        click__profile.addEventListener('click', () => {
            click__profile2.classList.toggle('active');
        }); */
        
        /*  $(".navbar__profile").on("click", function() {
            $(".navbar__menu").addClass("active");
            $(this).removeClass("active");
        }); */
        
        $(".navbar__profile").click(function(){
     	   if($(".navbar__menu").attr('class')=='navbar__menu'){
     		   $(".navbar__menu").addClass("active");
     	   }else{
     		   $(".navbar__menu").removeClass("active");
     	   }	
     	});
         
        $('.simpleLookBtn').click(function(){
        	$('.simpleLook').css('display','inline-block');	       		
        	$('.closerLook').css('display','none');
	      	$('.secretLook').css('display','none');      		       		
	    });
        
        $('.closerLookBtn').click(function(){

        	$('.simpleLook').css('display','none');	       		
        	$('.closerLook').css('display','inline-block');
	      	$('.secretLook').css('display','none');   
	    });       	
    
        
        $('.secretLookBtn').click(function(){
        	$('.simpleLook').css('display','none');	       		
        	$('.closerLook').css('display','none');
	      	$('.secretLook').css('display','inline-block');        		       		
	    });
         
        
        
      
    </script>
</body>
</html>