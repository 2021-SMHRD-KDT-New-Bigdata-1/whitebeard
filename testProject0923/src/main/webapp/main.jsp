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
	<nav class="navbar">       
        <div class="navbar__logo">
            로고 자리
        </div>

        <div class="navbar__main">
            할인2동
        </div>

        <div class="navbar__profile">
            프로필사진           
        </div>
    </nav>


    <ul class="navbar__menu">
        <li><a href="">마이페이지</a></li>
        <li><a href="">나중에추가</a></li>        
    </ul>

    
    <form action="" class="searchBar" align="center">
        <input type="text" placeholder="검색(상품명, 행정동)">    
            <button>검색</button>
        </input>
    </form><br>


    <form action="" align="center">
        <div style="display:inline"><button>담벼락</button></div>
        <div style="display:inline"><button>간략히</button></div>
        <div style="display:inline"><button>자세히</button></div>
    </form>


    <script>
        const click__profile = document.querySelector('.navbar__profile');
        const click__profile2 = document.querySelector('.navbar__menu');
        click__profile.addEventListener('click', () => {
            click__profile2.classList.toggle('active');
        });
    </script>
</body>
</html>