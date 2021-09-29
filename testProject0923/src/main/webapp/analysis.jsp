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
	    
			<!-- 상단 메뉴 -->
			<nav class="navbar">       
		        <div class="navbar__logo">
		            로고 자리
		        </div>
		
		        <div class="navbar__main">
		            할인2동  ㅇㅇ
		        </div>
		
		        <div class="navbar__profile">
		            프로필사진           
		        </div>
		    </nav>


			<!-- 프로필 누르면 나오는 메뉴 -->
		    <ul class="navbar__menu">
		        <li><a href="">마이페이지</a></li>
		        <li><a href="">나중에추가</a></li>        
		    </ul>
	
	
			<!--  -->
			<section>
				<div>내 점수 : <%=session.getAttribute("mypoint") %></div>
				<div>내가 자주 가는 식당 : </div>
				<div>내가 가는 식당 종류 : </div>
			</section>
	
	
	
	    </div>
	</div>
	
	<script src="js/jquery-3.6.0.min.js"></script>
    <script>
    
    	/* 프로필 메뉴 클릭 */
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