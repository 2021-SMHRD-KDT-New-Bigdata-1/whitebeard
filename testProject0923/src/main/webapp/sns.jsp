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
	SnsVO vo2 = (SnsVO)session.getAttribute("vo2");
   %>
	<a href="page.jsp">��</a>
	<div id="wrapper">
		<div id="content">
			<nav class='navbar'>
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
			</nav>

			<div id="inner">
				<div class="snshead">
					<form action="/SnsSevice">
						<div>
							<!--���� �����ʻ��� -->
							<table>
								<tr class="storeimg">
									<td class="storeimg">
										<%
										if (vo != null) {%> <img
										src="uploadedFiles/<%=vo.getCompany_pic1() %>" class="profile">
										<%} else {%>
										<p>��ü ������ ����� �ּ���.</p> <%}%>
									</td>
								</tr>

							</table>
						</div>

						<a href=""><img src="img/face.png" alt="" id="face"></a> <span
							id="name"> <strong id="storename">�����̸�</strong>
							<p id="storekind" name="stkind">
								<span>��������</span>
							</p>
						</span>
					</form>
					<div class="container">

						<ul class="tabs">
							<li class="tab-link current" data-tab="tab-1">��ǰ�Խñ�</li>
							<li class="tab-link" data-tab="tab-2">��������</li>
							<li class="tab-link" data-tab="tab-3">��۸�ƺ���</li>
						</ul>



						<!-- ��ǰ �Խñ� -->
						<div id="tab-1" class="tab-content current">
							<div class="feed">
								<h3 class="name"><%=vo.getCompany_name() %></h3>
								<div class="date"><%=vo2.getInput_date() %></div>
								<a class="title"><%=vo2.getSubject() %></a>
								<p class="content">
									
									<%for(int i = 1; i <= 3; i++){ %>
										<%if(vo2.getPic1() == null){
											break;
										}else{ %>
											<img src="uploadedFiles/<%=vo2.getPic1() %>" class="pic" >
										<%} %>
									<%} %>
								</p>
								<div class="accessory">
									<img src="���ƿ������" width="16px"> Like 
									<img src="��۾�����" width="16px"> Comments
								</div>
							</div>


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

						<!-- �������� -->
						<div id="tab-2" class="tab-content">
							<p>
								<%=vo.getCompany_info() %>)
							</p>
						</div>

						<!-- ��� ��ƺ��� -->
						<div id="tab-3" class="tab-content">
							<div>����1: ���ְڴ�</div>
							<div>����4:��ħ�� �ϵ��׿�</div>

							<div>����3:�׳�� ������� �������� �ϰ���� 15�� 16��...</div>

							<div>����2:ȭ�����ɹ�����</div>
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

</body>
</html>
