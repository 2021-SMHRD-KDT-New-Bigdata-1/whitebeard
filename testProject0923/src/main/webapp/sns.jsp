<%@page import="com.VO.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
.storeimg {
	border : 1px solid;
	width : 460px%;
	height : 150px;
}
.img1 {
	width:100%
}
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
html,
body {
  height: 100%;
  background: #f5f6f7;
}

a {
  text-decoration: none;
  color: black;
}

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

.searchBar {
	text-align: center;
}

h1 {
  position: fixed;
  top: 0;
  width: 100%;
  height: 60px;
  text-align: center;
  background: white;
  margin: 0;
  line-height: 60px;
}
section .box {
  height: 500px;
  background: wheat;
}
section .box p {
  margin: 0;
  color: white;
  padding: 80px 20px;
}
section .box:nth-child(2n) {
  background: silver;
}

#storename {
  color: red;
  display: inline;
  font-size: xx-large;
  margin: 0px;
  vertical-align: top;
  text-align: left;
}

#dongname {
  color: red;
  display: inline;
  font-size: small;
  vertical-align: middle;
}

#storekind {
  color: yellowgreen;
  display: inline;
  font-size: small;
  vertical-align: middle;
}
div.snshead.a > img {
  display: inline;
}

div.snshead > .tap {
  text-align: center;
  border-bottom: 1px solid;
}
div.snshead > .tap > button {
  background-color: white;
  border: none;
  cursor: pointer;

  align-items: center;
  justify-content: center;
}

.clicked {
  color: silver;
}

.container {
  width: 500px;
  margin: 0 auto;
}

ul.tabs {
  margin: 0px;
  padding: 0px;
  list-style: none;
  text-align : left;
}
ul.tabs li {
  background: none;
  color: #222;
  display: inline-block;
  padding: 10px 15px;
  cursor: pointer;
}

ul.tabs li.current {
  background: #ededed;
  color: #222;
}

.tab-content {
  display: none;
  background: #ededed;
  padding: 15px;
}

.tab-content.current {
  display: inherit;
}

#storeitem {
  width: 460px;
  height: 320px;
}

  

#tab-1 > div.coment {
	border: soild 1px;
	color: red;
	
}

</style>
<!--<link rel="stylesheet" href="assets/css/sns.css">-->

<script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>
	<%
	MemberVO vo = (MemberVO) session.getAttribute("vo");
	%>
	<div id=wrapper>
		<div id=content>
			<div class='navbar'>
				<div class='navbar__logo'>�ΰ� �ڸ�</div>

				<div class='navbar__main' onclick="location.href='main.jsp'">����2��</div>
				<%
				if (vo == null) {
					out.print("<div class='', onclick='location.href=\"login.jsp\"'>�α���</div>");
				} else {
					out.print("<div class='navbar__profile'>������</div>");
				%>


				<%
				out.print("<ul class='navbar__menu'>");
				out.print("<li><a href='mypage.jsp'>����������</a></li>");
				out.print("<li><a href=''>����ǥ</a></li>");
				out.print("<li><a href=''>������</a></li>");
				out.print("<li><a href=''>�Ǹ��ڵ��</a></li>");
				out.print("<li><a href='LogoutCon.do'>�α׾ƿ�</a></li>");
				out.print("</ul>");
				/*  if (vo.getEmail().equals("admin")) {
				out.print("<a href='selectMember.jsp'>ȸ����ü���</a>");
				} else {
				out.print("<a href='update.jsp'>ȸ����������</a>");
				}  */
				}
				%>

				<!-- <ul class="navbar__menu">
		
		<li><a href=''>����������</a></li>
		<li><a href=''>���߿��߰�</a></li>
		
	</ul> -->
			</div>
			<div>
			<!--���� �����ʻ��� -->
				<table >
					<tr>
						<td class = "storeimg">
							<%if(vo != null){ %>
							<img class = "img1" src = "<%=vo.getCompany_pic1()%>">
							<%}else{ %>
							<p>��ü ������ ����� �ּ���.</p>
							<%}%>
						</td>
					</tr>
					
				</table>
			</div>
				


				<div class="snshead">
					<form action="/SnsSevice">
						<a href=""><img src="img/face.png" alt="" id="face"></a> <span><strong
							id="storename">�����̸�</strong>
							<p id="dongname" name="dong">
								<span> <%String town = (String) session.getAttribute("town");
								 %> <%=town%></span>
							</p>
							<p id="storekind" name="stkind">
								<span>��������</span>
							</p> </span>
					</form>
					<div class="container">

						<ul class="tabs">
							<li class="tab-link current" data-tab="tab-1">��ǰ�Խñ�</li>
							<li class="tab-link" data-tab="tab-2">��������</li>
							<li class="tab-link" data-tab="tab-3">��۸�ƺ���</li>
						</ul>


						<div id="tab-1" class="tab-content current">

							<h4>����</h4>
							<img src="assets/img/test.jfif" id="storeitem" alt="">
							<div>�Խ���</div>
							<div>����</div>
							<div>�ǸŰ�</div>
							<div>��ȣ��</div>
							<div>
								�Խñ� ���ִ� ������� ���Ƽ� ��� ���ðڽ��ϱ�?
								<div>������</div>

							</div>
							<div class="coment">
								����1: ���ְڴ� ����4:��ħ�� �ϵ��׿� <br> ����3:�׳�� ������� �������� �ϰ���� 15��
								16��... <br> ����2:ȭ�����ɹ�����
							</div>

						</div>


						<div id="tab-2" class="tab-content">���� ����� ���� ������, ���� ����
							�����ε� �����ϴ�. ����� ����ȭ������� ǳ���ϰ� �����Ǿ� �־� �ݷ����׷��� ���߰�, ���ư�ȭ�� �����а� ���� ����
							���κ� ���濡 ����. �� ��Ÿ�ΰ� �̳׶� ������ ǳ���ϰ� �����Ǿ� �־� �Ƿ� �ؼһӸ� �ƴ϶� �Ǻ� �̿뿡�� ȿ����
							����.2019. 9. 6.
						</div>

						<div id="tab-3" class="tab-content">
							<div>����1: ���ְڴ�</div>
							<div>����4:��ħ�� �ϵ��׿�</div>

							<div>����3:�׳�� ������� �������� �ϰ���� 15�� 16��...</div>

							<div>����2:ȭ�����ɹ�����</div>

						</div>

					</div>


				</div>

				<div class="snsbody"></div>

				<script>
					$(".navbar__profile")
							.click(
									function() {
										if ($(".navbar__menu").attr('class') == 'navbar__menu') {
											$(".navbar__menu").addClass(
													"active");
										} else {
											$(".navbar__menu").removeClass(
													"active");
										}
									});

					var div2 = document.getElementsByClassName("div2");

					function handleClick(event) {
						console.log(event.target);
						// console.log(this);
						// �ܼ�â�� ���� �Ѵ� ������ ���� ���´�

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
						newImage.style.visibility = "hidden"; //��ư�� ������ �������� �̹��� �����
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
		</div>
	</div>

</body>






</html>