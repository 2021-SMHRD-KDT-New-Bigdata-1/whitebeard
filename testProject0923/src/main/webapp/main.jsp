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

    
    <!-- 검색 -->
    <form action="" class="searchBar" align="center">
        <input type="text" placeholder="검색(상품명, 행정동)">    
            <button>검색</button>
        </input>
    </form><br>


	<!-- 버튼 3개 -->
    <div align="center">
        <span class="simpleLookBtn" style="display:inline"><button>간략히</button></span>
        <span class="closerLookBtn" style="display:inline"><button>자세히</button></span>
        <span class="secretLookBtn" style="display:inline"><button>담벼락</button></span>
    </div><br>
    
    
    <!-- 간단히 볼래요  -->
    <section>
    	<div class="simpleLook" onclick="location.href='sns.jsp'">
		    <span class=""><img src="" alt="">요기엔 이미지를 넣어주세요</span>
		    <span>가격 데스</span>
		    <span>상품 이름</span>
		    <span>상호명 데스</span>
    	</div>  
    
    
    <!-- 자세히 볼래요  -->
	
		<div class="closerLook">
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
    	<div class="secretLook">
	    	<span class=""><img src="" alt="">요기엔 이미지를 넣어주세요</span>
	    	<span>제목 데스</span>
	    	<span>익명 데스</span>
	    </div>
    </section>

	<script src="js/jquery-3.6.0.min.js"></script>
    <script>
    
    	/* 프로필 메뉴 클릭 */
        const click__profile = document.querySelector('.navbar__profile');
        const click__profile2 = document.querySelector('.navbar__menu');
        click__profile.addEventListener('click', () => {
            click__profile2.classList.toggle('active');
        });
        
        /* 세 가지 버튼 */   
        
        $('.closerLook').hide();
        $('.secretLook').hide();
        
        $('.closerLookBtn').click(function(){
	       	$('.closerLook').show();
	       		$('.simpleLook').hide();	       		
	      		$('.secretLook').hide();       		       		
	       		       
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