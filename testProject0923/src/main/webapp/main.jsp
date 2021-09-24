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
    <form action="" align="center">
        <div class="simpleLookBtn" style="display:inline"><button>간략히</button></div>
        <div class="closerLookBtn" style="display:inline"><button>자세히</button></div>
        <div class="secretLookBtn" style="display:inline"><button>담벼락</button></div>
    </form><br>
    
    <!-- 간단히 볼래요  -->
    <section>
    	<div class="simpleLook">
	    	<div class=""><img src="" alt="">요기엔 이미지를 넣어주세요</div>
	    	<div>가격 데스</div>
	    	<div>상호명 데스</div>
    	</div>
    </section>
    
    
    <!-- 자세히 볼래요  -->
	<section>
		<div class="closerLook">
	    	<div class=""><img src="" alt="">요기엔 이미지를 넣어주세요</div>
	    	<div>제목 데스</div>
	    	<div>상호명 데스</div>
	    	<div>게시자 데스</div>
	    	<div>게시글 데스</div>
	    	<div>정가 데스</div>
	    	<div>할인가 데스</div>
	    	<div>판매가 데스</div>
    	</div>
    </section>
    
    
    <!-- 담벼락 -->
    <section>
    	<div class="secretLook">
	    	<div class=""><img src="" alt="">요기엔 이미지를 넣어주세요</div>
	    	<div>제목 데스</div>
	    	<div>익명 데스</div>
	    </div>
    </section>

    <script>
    
    	/* 프로필 메뉴 클릭 */
        const click__profile = document.querySelector('.navbar__profile');
        const click__profile2 = document.querySelector('.navbar__menu');
        click__profile.addEventListener('click', () => {
            click__profile2.classList.toggle('active');
        });
        
        /* 세 가지 버튼 */       
        const simpleLookBtn = document.querySelector('.simpleLookBtn');
        const closerLookBtn = document.querySelector('.closerLookBtn');
        const secretLookBtn = document.querySelector('.secretLookBtn');
        
        /* 버튼 클릭 이벤트 */
        const simpleLook = document.querySelector('.simpleLook');
        const closerLook = document.querySelector('.closerLook');
        const secretLook = document.querySelector('.secretLook');
        
        closerLookBtn.addEventListener('click', () => {
            closerLook.classList.toggle('active');
            simpleLook.classList.toggle('deactive');
            secretLook.classList.toggle('deactive');
        });
        
        secretLookBtn.addEventListener('click', () => {
        	secretLook.classList.toggle('active');
            simpleLook.classList.toggle('deactive');
            closerLook.classList.toggle('deactive');
        });
        
        simpleLookBtn.addEventListener('click', () => {
        	simpleLook.classList.toggle('active');
        	closerLook.classList.toggle('deactive');
            secretLook.classList.toggle('deactive');
        });
        
    </script>
</body>
</html>