<%@page import="com.VO.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/sns.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>
	<%
	MemberVO vo = (MemberVO) session.getAttribute("vo");
	%>
	
	<nav class='navbar'>
	<div class='navbar__logo'>로고 자리</div>

	<div class='navbar__main' onclick="location.href='main.jsp'">할인2동</div>
	<% 
	if (vo == null) {
		out.print("<div class='', onclick='location.href=\"login.jsp\"'>로그인</div></nav>");
	} else {
		out.print("<div class='navbar__profile'>프로필</div></nav>");
	%>


	<%
	out.print("<ul class='navbar__menu'>");
	out.print("<li><a href='mypage.jsp'>마이페이지</a></li>");
	out.print("<li><a href=''>순위표</a></li>");
	out.print("<li><a href=''>내찜목록</a></li>");
	out.print("<li><a href=''>판매자등록</a></li>");
	out.print("<li><a href='LogoutCon.do'>로그아웃</a></li>");
	out.print("</ul>");
	/*  if (vo.getEmail().equals("admin")) {
	out.print("<a href='selectMember.jsp'>회원전체목록</a>");
	} else {
	out.print("<a href='update.jsp'>회원정보수정</a>");
	}  */
	}
	%>

	<!-- <ul class="navbar__menu">
		
		<li><a href=''>마이페이지</a></li>
		<li><a href=''>나중에추가</a></li>
		
	</ul> -->


	<form action="" class="searchBar">
		<input type="text" placeholder="검색(상품명, 행정동)">
		<button>검색</button>
	</form>


	<div class="snshead">
		<form action="/SnsSevice">
			<a href=""><img src="img/face.png" alt="" id="face"></a> <span><strong
				id="storename">가게이름</strong>
				<p id="dongname" name="dong">
					<span> <%
 String town = (String) session.getAttribute("town");
 %> <%=town%></span>
				</p>
				<p id="storekind" name="stkind">
					<span>가게종류</span>
				</p> </span>
		</form>
		<div class="container">

			<ul class="tabs">
				<li class="tab-link current" data-tab="tab-1">상품게시글</li>
				<li class="tab-link" data-tab="tab-2">가게정보</li>
				<li class="tab-link" data-tab="tab-3">댓글모아보기</li>
			</ul>


			<div id="tab-1" class="tab-content current">

				<h4>제목</h4>
				<img src="assets/img/test.jfif" id="storeitem" alt="">
				<div>게시자</div>
				<div>정가</div>
				<div>판매가</div>
				<div>상호명</div>
				<div>
					게시글 맛있는 가을전어를 갈아서 드셔 보시겠습니까?
					<div>프로필</div>

				</div>
				<div class="coment">
					행인1: 맛있겠당 행인4:군침이 싹도네요 <br> 행인3:그녀와 가을전어에 소주한잔 하고싶은 15시 16분...
					<br> 행인2:화욜점심뭐먹지
				</div>

			</div>


			<div id="tab-2" class="tab-content">가을 전어는 맛도 좋지만, 몸에 좋은 것으로도
				유명하다. 전어에는 불포화지방산이 풍부하게 함유되어 있어 콜레스테롤을 낮추고, 동맥경화나 고혈압과 같은 각종 성인병 예방에
				좋다. 또 비타민과 미네랄 성분이 풍부하게 함유되어 있어 피로 해소뿐만 아니라 피부 미용에도 효과가 좋다.2019. 9.
				6.</div>

			<div id="tab-3" class="tab-content">
				<div>행인1: 맛있겠당</div>
				<div>행인4:군침이 싹도네요</div>

				<div>행인3:그녀와 가을전어에 소주한잔 하고싶은 15시 16분...</div>

				<div>행인2:화욜점심뭐먹지</div>

			</div>

		</div>


	</div>

	<div class="snsbody"></div>

	<script>
        const click__profile = document.querySelector('.navbar__profile');
        const click__profile2 = document.querySelector('.navbar__menu');
        click__profile.addEventListener('click', () => {
            click__profile2.classList.toggle('active');
        });

        var div2 = document.getElementsByClassName("div2");

		function handleClick(event) {
		  console.log(event.target);
		  // console.log(this);
		  // 콘솔창을 보면 둘다 동일한 값이 나온다
		
		  console.log(event.target.classList);
		
		  if (event.target.classList[1] === "clicked") {
		    event.target.classList.remove("clicked");
		  } else {
		    for (var i = 0; i < div2.length; i++) {
		      div2[i].classList.remove("clicked");
		    }
		
		    event.target.classList.add("clicked");
		  }
		}
		
		function init() {
		  for (var i = 0; i < div2.length; i++) {
		    div2[i].addEventListener("click", handleClick);
		  }
		}
		
		init();
		
		
		
		
		function loadFile(input) {
		    var file = input.files[0];
		
		    var name = document.getElementById('fileName');
		    name.textContent = file.name;
		
		    var newImage = document.createElement("img");
		    newImage.setAttribute("class", 'img');
		
		    newImage.src = URL.createObjectURL(file);   
		
		    newImage.style.width = "50%";
		    newImage.style.height = "50%";
		    newImage.style.visibility = "hidden";   //버튼을 누르기 전까지는 이미지 숨기기
		    newImage.style.objectFit = "contain";
		
		    var container = document.getElementById('image-show');
		    container.appendChild(newImage);
		};
		
		
		$(document).ready(function(){
		  
		  $('ul.tabs li').click(function(){
		    var tab_id = $(this).attr('data-tab');
		
		    $('ul.tabs li').removeClass('current');
		    $('.tab-content').removeClass('current');
		
		    $(this).addClass('current');
		    $("#"+tab_id).addClass('current');
		  })
		
		})
    </script>


</body>






</html>