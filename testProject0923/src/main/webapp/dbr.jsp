<%@page import="com.VO.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>
<link rel="stylesheet" href="assets/css/dbr.css" />
<script src="http://code.jquery.com/jquery-latest.js"></script>
<style>
#wrapper {
	position: relative;
	height: 100%;
}

#content {
	left: 50%;
	position: absolute;
	transform: translate(-50%);
	text-align: center;
	width: 460px;
	margin: auto;
}

html, body {
	margin: 0;
}

a {
	text-decoration: none;
	color: black;
}

/*  */
.navbar {
	background-color: burlywood;
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 8px 12px;
}

.navbar__profile {
	display: flex;
	list-style: none;
}

.navbar__menu {
	width: 20%;
	padding-left: 0;
	display: none;
	flex-direction: column;
	list-style: none;
}

.navbar__menu li {
	padding: 8px 12px;
}

.navbar__menu li:hover {
	background-color: cornflowerblue;
	border-radius: 4px;
}

.navbar__menu.active {
	background-color: darkgray;
	float: right;
	display: flex;
	flex-direction: column;
}

#dbr {
	text-align: center;
}

#dbr_box {
	border: blueviolet solid 1px;
	width: auto;
	height: auto;
}

#dbr_box_body {
	border: darkblue solid 1px;
	width: auto;
	height: auto;
}

#dbr_box_tail {
	border: black solid 1px;
	width: auto;
	height: auto;
}

#coment_box {
	width: 850px;
	height: auto;
}

#dbr_box_body_title {
	text-align: center;
}

#dbr_box_body_name {
	text-align: right;
	font-size: 20px;
}

#dbr_box_body_time {
	font-size: small;
	color: gray;
	text-align: right;
}

#dbr_box_body_text {
	margin: 5px;
}

#dbr_box_body_img {
	text-align: center;
}

#form-commentInfo {
	width: 100%;
}

#comment-count {
	margin-bottom: 10px;
}

#comment-input {
	width: 50%;
	height: 3.3em;
}

#submit {
	background-color: rgb(0, 128, 255);
	width: 5.5em;
	height: 3.3em;
	font-size: 15px;
	font-weight: bold;
	color: aliceblue;
}

#voteUp, #voteDown {
	width: 3.5em;
	height: 1.9em;
	background-color: aqua;
}

#comments {
	margin-top: 10px;
}

.eachComment {
	width: 50%;
	margin: 10px;
	padding: 0.5em;
	border-bottom: 1px solid #c1bcba;
}

.eachComment .name {
	font-size: 1.5em;
	font-weight: bold;
	margin-bottom: 0.3em;
	display: flex;
	justify-content: space-between;
}

.eachComment .inputValue {
	font-size: 1.2em;
	font-style: italic;
}

.eachComment .time {
	font-size: 0.7em;
	color: #c1bcba;
	font-style: oblique;
	margin-top: 0.5em;
	margin-bottom: 0.5em;
}

.eachComment .voteDiv {
	display: flex;
	justify-content: flex-end;
}

.eachComment .deleteComment {
	background-color: red;
	color: aliceblue;
}

#comments>div:nth-child(1n) {
	border: 1px solid;
}
</style>
</head>
<body>
	<%
	MemberVO vo = (MemberVO) session.getAttribute("vo");
	%>


	<div id="wrapper">
		<div id="content">
			<nav class="navbar">
				<div class="navbar__logo">로고 자리</div>

				<div class="navbar__main" onclick="location.href='main.jsp'">할인2동</div>

				<%
				if (vo == null) {
					out.print("<div class='' onclick='location.href=\"login.jsp\"'>로그인</div></nav>");

<<<<<<< HEAD
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
		<div id="inner">
			<h1 id="dbr">담벼락</h1>
			<div id="dbr_box">
				<div id="dbr_box_body">
					<div id="dbr_box_body_title">
						<h4>오늘점심 뭐먹을지 딱정하는법</h4>
					</div>
					<div>
						<div id="dbr_box_body_name">익명</div>
						<div id="dbr_box_body_time">시간</div>
					</div>

					<div id="dbr_box_body_img">
						<img src="assets/img/agr.jpg" alt="" />
					</div>
					<div id="dbr_box_body_text">미안하다 이거 보여주려고 어그로끌었다.. 나루토 사스케
						싸움수준 ㄹㅇ실화냐? 진짜 세계관최강자들의 싸움이다.. 그찐따같던 나루토가 맞나? 진짜 나루토는 전설이다..진짜옛날에
						맨날나루토봤는데 왕같은존재인 호카게 되서 세계최강 전설적인 영웅이된나루토보면 진짜내가다 감격스럽고 나루토 노래부터
						명장면까지 가슴울리는장면들이 뇌리에 스치면서 가슴이 웅장해진다.. 그리고 극장판 에 카카시앞에 운석날라오는 거대한 걸
						사스케가 갑자기 순식간에 나타나서 부숴버리곤 개간지나게 나루토가 없다면 마을을 지킬 자는 나밖에 없다 라며 바람처럼
						사라진장면은 진짜 나루토처음부터 본사람이면 안울수가없더라 진짜 너무 감격스럽고 보루토를 최근에 알았는데 미안하다..
						지금20화보는데 진짜 나루토세대나와서 너무 감격스럽고 모두어엿하게 큰거보니 내가 다 뭔가 알수없는 추억이라해야되나
						그런감정이 이상하게 얽혀있다.. 시노는 말이많아진거같다 좋은선생이고..그리고 보루토왜욕하냐 귀여운데 나루토를보는것같다
						성격도 닮았어 그리고버루토에 나루토사스케 둘이싸워도 이기는 신같은존재 나온다는게 사실임?? 그리고인터닛에 쳐봤는디 이거
						ㄹㅇㄹㅇ 진짜팩트냐?? 저적이 보루토에 나오는 신급괴물임?ㅡ 나루토사스케 합체한거봐라 진짜 ㅆㅂ 이거보고
						개충격먹어가지고 와 소리 저절로 나오더라 ;; 진짜 저건 개오지는데.. 저게 ㄹㅇ이면 진짜 꼭봐야돼 진짜 세계도
						파괴시키는거아니야 .. 와 진짜 나루토사스케가 저렇게 되다니 진짜 눈물나려고했다.. 버루토그라서 계속보는중인데 저거
						ㄹㅇ이냐..? 하.. ㅆㅂ 사스케 보고싶다.. 진짜언제 이렇게 신급 최강들이 되었을까 옛날생각나고 나 중딩때생각나고
						뭔가 슬프기도하고 좋기도하고 감격도하고 여러가지감정이 복잡하네.. 아무튼 나루토는 진짜 애니중최거명작임..ㅋㅋㅋㅋ</div>
				</div>
				<div id="dbr_box_tail">
					<div class="dbr_box_tail_coments">
						<div id="form-commentInfo">
							<div id="comment-count">
								댓글 <span id="count">0</span>
=======
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
				<div>
					<h1 id="dbr">담벼락</h1>
					<div id="dbr_box">
						<div id="dbr_box_body">
							<div id="dbr_box_body_title">
								<h4>오늘점심 뭐먹을지 딱정하는법</h4>
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-New-Bigdata-1/whitebeard.git
							</div>
							<div>
								<div id="dbr_box_body_name">익명</div>
								<div id="dbr_box_body_time">시간</div>
							</div>

							<div id="dbr_box_body_img">
								<img src="assets/img/agr.jpg" alt="" />
							</div>
							<div id="dbr_box_body_text">미안하다 이거 보여주려고 어그로끌었다.. 나루토 사스케
								싸움수준 ㄹㅇ실화냐? 진짜 세계관최강자들의 싸움이다.. 그찐따같던 나루토가 맞나? 진짜 나루토는
								전설이다..진짜옛날에 맨날나루토봤는데 왕같은존재인 호카게 되서 세계최강 전설적인 영웅이된나루토보면 진짜내가다
								감격스럽고 나루토 노래부터 명장면까지 가슴울리는장면들이 뇌리에 스치면서 가슴이 웅장해진다.. 그리고 극장판 에
								카카시앞에 운석날라오는 거대한 걸 사스케가 갑자기 순식간에 나타나서 부숴버리곤 개간지나게 나루토가 없다면 마을을
								지킬 자는 나밖에 없다 라며 바람처럼 사라진장면은 진짜 나루토처음부터 본사람이면 안울수가없더라 진짜 너무 감격스럽고
								보루토를 최근에 알았는데 미안하다.. 지금20화보는데 진짜 나루토세대나와서 너무 감격스럽고 모두어엿하게 큰거보니
								내가 다 뭔가 알수없는 추억이라해야되나 그런감정이 이상하게 얽혀있다.. 시노는 말이많아진거같다 좋은선생이고..그리고
								보루토왜욕하냐 귀여운데 나루토를보는것같다 성격도 닮았어 그리고버루토에 나루토사스케 둘이싸워도 이기는 신같은존재
								나온다는게 사실임?? 그리고인터닛에 쳐봤는디 이거 ㄹㅇㄹㅇ 진짜팩트냐?? 저적이 보루토에 나오는 신급괴물임?ㅡ
								나루토사스케 합체한거봐라 진짜 ㅆㅂ 이거보고 개충격먹어가지고 와 소리 저절로 나오더라 ;; 진짜 저건 개오지는데..
								저게 ㄹㅇ이면 진짜 꼭봐야돼 진짜 세계도 파괴시키는거아니야 .. 와 진짜 나루토사스케가 저렇게 되다니 진짜
								눈물나려고했다.. 버루토그라서 계속보는중인데 저거 ㄹㅇ이냐..? 하.. ㅆㅂ 사스케 보고싶다.. 진짜언제 이렇게
								신급 최강들이 되었을까 옛날생각나고 나 중딩때생각나고 뭔가 슬프기도하고 좋기도하고 감격도하고 여러가지감정이
								복잡하네.. 아무튼 나루토는 진짜 애니중최거명작임..ㅋㅋㅋㅋ</div>
						</div>
						<div id="dbr_box_tail">
							<div class="dbr_box_tail_coments">
								<div id="form-commentInfo">
									<div id="comment-count">
										댓글 <span id="count">0</span>
									</div>
									<input id="comment-input" placeholder="댓글을 입력해 주세요." />
									<button id="submit">등록</button>
								</div>
								<div id="comments"></div>
								<script src="assets/javascripts/dbrjs.js"></script>
							</div>
						</div>
					</div>
				</div>
		</div>
	</div>
	<script>
		$(".navbar__profile").click(function(){
     	   if($(".navbar__menu").attr('class')=='navbar__menu'){
     		   $(".navbar__menu").addClass("active");
     	   }else{
     		   $(".navbar__menu").removeClass("active");
     	   }	
     	});
		</script>
</body>
</html>