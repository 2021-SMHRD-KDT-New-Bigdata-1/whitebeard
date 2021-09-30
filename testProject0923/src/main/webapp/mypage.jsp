<%@page import="com.VO.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/mypagestyle.css">
<link
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"
  />
</head>
<body>
	<%
	MemberVO vo = (MemberVO)session.getAttribute("vo");
	%>
	
	<div class="wrap">
        <div class="mypage">
            <h2 onclick="location.href='main.jsp'">할인 2동</h2>
            <h4>마이 페이지</h4>
            <div class="imgAndNick">
                <div class="profilediv" style="background: #BDBDBD;">
                    <img class="profile" src="<%=vo.getCompany_pic1() %>">
                   <!--   "assets/img/seller.png">-->
                </div>
                <div class="nick">
                    <p><%=vo.getNickname() %></p>
                   
                </div>
            </div>
            
            
            <div class="submit">
                <a href = "update.html"><input type="submit" value="프로필 보기 / 회원정보 수정 "></a>
            </div>
            <hr>
            
            <!-- 내 동네 설정 -->
            <div class="plus">
                <a class="sub" id="ground">내 동네 설정 </a>
                <div class="icon1"><i class="fas fa-map-marker-alt"></i></div>
                <%String town = (String)session.getAttribute("town");
                	if(town == null){
                		town = " : 동네 없슴";
                	} 
                %>
                <%=" : "+ town %>
            </div>
            <form action="MyPageService" method="post">
                <input type="text" id="ground_input" name="town" class=''>
                <input type="submit" value="확인" id="ground_input_check" class=''>
            </form>
            
            
            <!-- 내 관심 상품 -->
            <div class="plus">
                <a class="sub" id="favitem">내 관심 상품</a>
                <div class="icon1"><i class="fas fa-shopping-cart"></i></div>
                <%String favitem = (String)session.getAttribute("favitem");
                	if(favitem == null){
                		favitem = " : 아이템 없슴";
                	} 
                %>
                <%=favitem %>
            </div>
            <form action="MyPageService" method="post">
                <input type="text" id="item_input" name="favitem" class=''>
                <input type="submit" value="확인" id="item_input_check">
            </form>
            
         
         	<!-- 내 관심 스토어 -->
            <div class="plus">
                <a class="sub" id="favshop">내 관심 스토어</a>
                <div class="icon1"><i class="fas fa-store-alt"></i></div>
                <%String favshop = (String)session.getAttribute("favshop");
                	if(favshop == null){
                		favshop = " : 상점없슴";
                	} 
                %>
                <%=favshop %>
            </div>
            <form action="MyPageService" method="post">
                <input type="text" id="shop_input" name="favshop" class=''>
                <input type="submit" value="확인" id="shop_input_check">
            </form>
            
            
            <!-- 내 찜 목록 -->
            
            
            <!-- 순위표 -->
            <div class="plus">
                <a class="sub" href = "rank.jsp">순위표</a>
                <div class="icon1"><i class="fas fa-trophy"></i></div>
            </div>
            
            
            <!-- 판매자 등록 -->
            <div class="plus">
                <a class="sub" href = "sellerjoin.html">판매자 등록</a>
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
   $("#favitem").click(function(){
	   if($("#item_input").attr('class')==''){
		   $("#item_input").addClass("active");
		   $("#item_input_check").addClass("active");
	   }else{
		   $("#item_input").removeClass("active");
		   $("#item_input_check").removeClass("active");
	   }	
	});
   $("#favshop").click(function(){
	   if($("#shop_input").attr('class')==''){
		   $("#shop_input").addClass("active");
		   $("#shop_input_check").addClass("active");
	   }else{
		   $("#shop_input").removeClass("active");
		   $("#shop_input_check").removeClass("active");
	   }	
	});
   
   
    
    </script>
</body>
</html>