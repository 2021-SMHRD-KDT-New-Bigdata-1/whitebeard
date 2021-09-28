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



    
    <!-- 검색 -->
    <form action="" class="searchBar">
        <input type="text" placeholder="검색(상품명, 행정동)">    
            <button>검색</button>
    </form><br>


	<!-- 버튼 3개 -->
    <div align="center">
        <span class="simpleLookBtn" style="display:inline"><button>간략히</button></span>
        <button class="closerLookBtn" style="display:inline">자세히</button>
        <span class="secretLookBtn" style="display:inline"><button>담벼락</button></span>
    </div><br>
    
    
    <!-- 간단히 볼래요  -->
    <section>
    	<div class="simpleLook" onclick="location.href='sns.jsp'">
		    <span class=""><img src="" alt="">요기엔 이미지를 넣어주세요</span>
		    <span>가격 데스</span>
		    <span>상호명 데스</span>
    	</div>  
    
    
    <!-- 자세히 볼래요  -->
	
		<div class="closerLook" onclick="location.href='sns.jsp'" style = "display : none;">
	    	<span class=""><img src="" alt="">요기엔 이미지를 넣어주세요</span>
	    	<span>제목 데스</span>
	    	<span>상호명 데스</span>
	    	<span>게시자 데스</span>
	    	<span>게시글 데스</span>
	    	<span>정가 데스</span>
	    	<span>할인가 데스</span>
	    	<span>판매가 데스</span>
    	</div>
    
    
    <!-- 담벼락 -->
    	<div class="secretLook" onclick="location.href='dbr.jsp'" style = "display : none;">
	    	<span class=""><img src="" alt="">요기엔 이미지를 넣어주세요</span>
	    	<span>제목 데스</span>
	    	<span>익명 데스</span>
	    </div>
    </section>

	<!-- <script src="js/jquery-3.6.0.min.js"></script> -->
    <script>
    
    	/* 프로필 메뉴 클릭 */
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