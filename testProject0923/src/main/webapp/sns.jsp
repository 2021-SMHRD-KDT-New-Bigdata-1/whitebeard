<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.snsDAO"%>
<%@page import="com.VO.SnsVO"%>
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
	snsDAO dao = new snsDAO();
	int idx = Integer.parseInt(request.getParameter("sns_seq")); 
	String id = request.getParameter("sns_memeber_id");
	
	ArrayList<SnsVO> vo2 = dao.sns_real(idx);
	ArrayList<MemberVO> vo3 = dao.sns_member(id);
	
	session.setAttribute("sns_seq", idx);
   %>
	<a href="page.jsp">고</a>
	<div id="wrapper">
		<div id="content">
			<nav class='navbar'>
				<div class='navbar__logo'>로고 자리</div>

				<div class='navbar__main' onclick="location.href='main.jsp'">할인2동</div>
				<%
				if (vo == null) {
					out.print("<div class='', onclick='location.href=\"login.jsp\"'>로그인</div>");
				} else {
					out.print("<div class='navbar__profile'>프로필</div>");
				%>


				<%
				out.print("<ul class='navbar__menu'>");
				out.print("<li><a href='mypage.jsp'>마이페이지</a></li>");
				out.print("<li><a href=''>순위표</a></li>");
				out.print("<li><a href=''>내찜목록</a></li>");
				out.print("<li><a href=''>판매자등록</a></li>");
				out.print("<li><a href='LogoutCon.java'>로그아웃</a></li>");
				out.print("</ul>");
				/*  if (vo.getEmail().equals("admin")) {
				out.print("<a href='selectMember.jsp'>회원전체목록</a>");
				} else {
				out.print("<a href='update.jsp'>회원정보수정</a>");
				}  */
				}
				%>
			</nav>

			<div id="inner">
				<div class="snshead">
					<form action="/SnsSevice">
						<div>
							<!--가게 프로필사진 -->
							<table>
								<tr class="storeimg">
									<td class="storeimg">
										<img
										src="uploadedFiles/" class="profile">
										 
										<p>업체 사진을 등록해 주세요.</p> 
									</td>
								</tr>

							</table>
						</div>

						<a href=""><img src="img/face.png" alt="" id="face"></a> <span
							id="name"> <strong id="storename">가게이름 : <%= vo3.get(0).getCompany_name() %></strong>
							<p id="storekind" name="stkind">
								<span>가게종류 : <%= vo3.get(0).getB_type() %> </span>
							</p>
						</span>
					</form>
					<div class="container">

						<ul class="tabs">
							<li class="tab-link current" data-tab="tab-1">상품게시글</li>
							<li class="tab-link" data-tab="tab-2">가게정보</li>
							<li class="tab-link" data-tab="tab-3">댓글모아보기</li>
						</ul>



						<!-- 상품 게시글 -->
						<div id="tab-1" class="tab-content current">
							<div class="feed">
								<%-- <h3 class="name"><%=vo.getCompany_name() %></h3>
								<div class="date"><%=vo2.getInput_date() %></div>
								<a class="title"><%=vo2.getSubject() %></a>
								<p class="content">
									
									<%for(int i = 1; i <= 3; i++){ %>
										<%if(vo2.getPic1() == null){
											break;
										}else{ %>
											<img src="uploadedFiles/<%=vo2.getPic1() %>" class="pic" >
										<%} %>
									<%} %>  --%>
								</p>
								<div class="accessory">
									<img src="좋아요아이콘" width="16px"> Like 
									<img src="댓글아이콘" width="16px"> Comments
								</div>
							</div>


							<h4><%=vo2.get(0).getSubject() %></h4>
							<img src="assets/img/test.jfif" id="storeitem" alt="">
							<div>게시자 : <%=vo2.get(0).getMember_id() %> </div>
							<div>정가 : <%=vo2.get(0).getRegular_price() %></div>
							<div>판매가 : <%=vo2.get(0).getSale_price() %></div>
							<div>상호명 :  <%=vo3.get(0).getCompany_name() %></div>
							<div>
							글내용 : <%=vo2.get(0).getContent() %>
						    <div>프로필</div>

							</div>
							<div class="coment">
							<!-- 댓글  -->
							<% if (vo == null) {
								out.print("");
									} else {
								%>
								<form action="Comment">
								<a>댓글 입력 : </a><input type="text" name="content">
								<input type="submit" value="등록"  onclick="location.href='Comment.java?sns_seq=<%=idx%>'">
								</form>
							</div>
							<% } %>

						</div>

						<!-- 가게정보 -->
						<div id="tab-2" class="tab-content">
							<p>
								가게정보 : <%= vo3.get(0).getCompany_info() %>
							</p>
						</div>

						<!-- 댓글 모아보기 -->
						<div id="tab-3" class="tab-content">
							<div>행인1: 맛있겠당</div>
							<div>행인4:군침이 싹도네요</div>

							<div>행인3:그녀와 가을전어에 소주한잔 하고싶은 15시 16분...</div>

							<div>행인2:화욜점심뭐먹지</div>
						</div>
										</div>
				</div>
			</div>
		</div>
	</div>

	<script>
		$(".navbar__profile").click(function() {
			if ($(".navbar__menu").attr('class') == 'navbar__menu') {
				$(".navbar__menu").addClass("active");
			} else {
				$(".navbar__menu").removeClass("active");
			}
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
			newImage.style.visibility = "hidden"; //버튼을 누르기 전까지는 이미지 숨기기
			newImage.style.objectFit = "contain";

			var container = document.getElementById('image-show');
			container.appendChild(newImage);
		};

		$(document).ready(function() {

			$('ul.tabs li').click(function() {
				var tab_id = $(this).attr('data-tab');

				$('ul.tabs li').removeClass('current');
				$('.tab-content').removeClass('current');

				$(this).addClass('current');
				$("#" + tab_id).addClass('current');
			})

		})
	</script>

</body>
</html>
