<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/analysis.css"/>

</head>
<body>
	<div id="wrapper">
	    <div id="content">
	    
			<!-- ��� �޴� -->
			<nav class="navbar">       
		        <div class="navbar__logo">
		            �ΰ� �ڸ�
		        </div>
		
		        <div class="navbar__main">
		            ����2��  ����
		        </div>
		
		        <div class="navbar__profile">
		            �����ʻ���           
		        </div>
		    </nav>


			<!-- ������ ������ ������ �޴� -->
		    <ul class="navbar__menu">
		        <li><a href="">����������</a></li>
		        <li><a href="">���߿��߰�</a></li>        
		    </ul>
	
	
			<!--  -->
			<section>
				<div>�� ���� : <%=session.getAttribute("mypoint") %></div>
				<div>���� ���� ���� �Ĵ� : </div>
				<div>���� ���� �Ĵ� ���� : </div>
			</section>
	
	
	
	    </div>
	</div>
	
	<script src="js/jquery-3.6.0.min.js"></script>
    <script>
    
    	/* ������ �޴� Ŭ�� */
       /*  const click__profile = document.querySelector('.navbar__profile');
        const click__profile2 = document.querySelector('.navbar__menu');
        click__profile.addEventListener('click', () => {
            click__profile2.classList.toggle('active');
        }); */
        
        $(".navbar__profile").on("click", function() {
            $(".navbar__menu").addClass("active");
            $(this).removeClass("active");
        });
        
        $('.closerLookBtn').click(function(){

        	$('.closerLook').css('display','flex');
        	$('.simpleLook').css('display','none');	       		
	      	$('.secretLook').css('display','none');   
	    });       	
    
        
        $('.secretLookBtn').click(function(){
	       	$('.secretLook').show();
	       		$('.simpleLook').hide();	       		
	      		$('.closerLook').hide();       		       		
	    });
         
        
        $('.simpleLookBtn').click(function(){
	       	$('.simpleLook').show();
	       		$('.closerLook').hide();	       		
	      		$('.secretLook').hide();       		       		
	    });
        
      
    </script>
</body>
</html>