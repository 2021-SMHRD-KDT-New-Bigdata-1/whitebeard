<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/mypagestyle.css">
<link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"
  />
</head>
<body>
	<div class="wrap">
        <div class="mypage">
            <h2>할인 2동</h2>
            <h4>마이 페이지</h4>
            <div class="imgAndNick">
                <div class="profilediv" style="background: #BDBDBD;">
                    <img class="profile" src="assets/img/seller.png">
                </div>
                <div class="nick">
                    <p>셀러</p>
                </div>
            </div>
            
            
            <div class="submit">
                <input type="submit" value="프로필 보기 / 회원정보 수정 ">
            </div>
            <hr>
            
            <!-- 내 동네 설정 -->
            <div class="plus">
                <a class="sub" id="ground">내 동네 설정</a>
                <div class="icon1"><i class="fas fa-map-marker-alt"></i></div>
            </div>
            <form action="MyPageService">
                <input type="text" id="ground_input" class="town">
                <input type="submit" value="확인" id="ground_input_check">
            </form>
            
            
            <!-- 내 관심 상품 -->
            <div class="plus">
                <a class="sub" id="favitem">내 관심 상품</a>
                <div class="icon1"><i class="fas fa-shopping-cart"></i></div>
            </div>
            <form action="MyPageService">
                <input type="text" id="item_input" class="favitem">
                <input type="submit" value="확인" id="item_input_check">
            </form>
            
         
         	<!-- 내 관심 스토어 -->
            <div class="plus">
                <a class="sub" id="favshop">내 관심 스토어</a>
                <div class="icon1"><i class="fas fa-store-alt"></i></div>
            </div>
            <form action="MyPageService">
                <input type="text" id="shop_input">
                <input type="submit" value="확인" id="shop_input_check">
            </form>
            
            
            <!-- 공지사항 -->
            <div class="plus">
                <a class="sub">공지사항</a>
                <div class="icon1"><i class="fas fa-volume-up"></i></div>
            </div>
            
            
            <!-- 순위표 -->
            <div class="plus">
                <a class="sub">순위표</a>
                <div class="icon1"><i class="fas fa-trophy"></i></div>
            </div>
            
            
            <!-- 판매자 등록 -->
            <div class="plus">
                <a class="sub">판매자 등록</a>
                <div class="icon1"><i class="fas fa-user-check"></i></div>
            </div>
        </div>
    </div>
    
    <script src="js/jquery-3.6.0.min.js"></script>
    <script>
    
    /* 내 동네 클릭  */
   $("#ground").click(function(){
	   if($("#ground_input").attr('class')==''){
		   $("#ground_input").addClass("active");
		   $("#ground_input_check").addClass("active");
	   }else{
		   $("#ground_input").removeClass("active");
		   $("#ground_input_check").removeClass("active");
	   }	
	});
   
   

	  

     
   
    
     
  
    
    </script>
</body>
</html>