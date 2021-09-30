<%@page import="com.VO.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/main.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"
	integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
  <%
	MemberVO vo = (MemberVO) session.getAttribute("vo");
	%>
	<!-- ��� �޴� -->

	<nav class='navbar'>
		<div class='navbar__logo'>�ΰ� �ڸ�</div>

		<div class='navbar__main' onclick="location.href='main.jsp'">����2��</div>
		<%
		if (vo == null) {
			out.print("<div class='' onclick='location.href=\"login.jsp\"'>�α���</div></nav>");

		} else {
			out.print("<div class='navbar__profile'>������</div></nav>");
			out.print("<ul class='navbar__menu'>");
			out.print("<li><a href='mypage.jsp'>����������</a></li>");
			out.print("<li><a href='myzzim.jsp'>��������</a></li>");
			out.print("<li><a href='sellerjoin.html'>�Ǹ��ڵ��</a></li>");
			out.print("<li><a href='LogoutCon.java'>�α׾ƿ�</a></li>");
			out.print("</ul>");
		}
		%>




		<!-- �˻� -->
		<div id="search.jsp">
			<form action="search" class="searchBar" method="post">
				<input type="text" name="want" placeholder="�˻�(��ǰ��, ������)">
				<input type="submit" value="�˻�" onClick="location.href='search.jsp'">
			</form>
			<br>


			<!-- ��ư 3�� -->
			<div align="center">
				<span class="simpleLookBtn" style="display: inline"><button>������</button></span>
				<button class="closerLookBtn" style="display: inline">�ڼ���</button>
				<span class="secretLookBtn" style="display: inline"><button>�㺭��</button></span>
			</div>
			<br>


			<!-- ������ ������  -->
			<section>
				<div class="simpleLook" onclick="location.href='sns.jsp'">
					<div class="img">
						<img src="assets/img/seller.png" alt="��ǰ�̹���">
					</div>
					<div class="hoho">
						<div class="notimg">��ǰ��</div>
						<br>
						<div class="notimg">���� �ǸŰ�</div>
						<br>
						<div class="notimg">��ȣ�� :</div>
						<br>
					</div>
				</div>
				<div class="simpleLook" onclick="location.href='sns.jsp'">
					<div class="img">
						<img src="assets/img/seller.png" alt="��ǰ�̹���">
					</div>
					<div class="hoho">
						<div class="notimg">��ǰ��</div>
						<br>
						<div class="notimg">���� �ǸŰ�</div>
						<br>
						<div class="notimg">��ȣ�� :</div>
						<br>
					</div>
				</div>
				<div class="simpleLook" onclick="location.href='sns.jsp'">
					<div class="img">
						<img src="assets/img/seller.png" alt="��ǰ�̹���">
					</div>
					<div class="hoho">
						<div class="notimg">��ǰ��</div>
						<br>
						<div class="notimg">���� �ǸŰ�</div>
						<br>
						<div class="notimg">��ȣ�� :</div>
						<br>
					</div>
				</div>


				<!-- �ڼ��� ������  -->

				<div class="closerLook" onclick="location.href='sns.jsp'"
					style="display: none;">
					<div class="img2">
						<img src="assets/img/seller.png" alt="��ǰ�̹���">
					</div>
					<div class="hoho2">
						<div class="notimg">����</div>
						<br>
						<div class="notimg">��ȣ��</div>
						<br>
						<div class="notimg">�Խ���</div>
						<br>
						<div class="notimg">�Խñ�</div>
						<br>
						<div class="notimg">����</div>
						<br>
						<div class="notimg">���ΰ�</div>
						<br>
						<div class="notimg">�ǸŰ�</div>
						<br>
					</div>
				</div>


				<!-- �㺭�� -->
				<div class="secretLook"
					style="display: none;">
					
					<marquee behavior="alternate" scrolldelay="100" direction="right">
      �㺭��.</marquee
    >
    <table class="bbs" width="800" height="200" border="2" bgcolor="D8D8D8">
      <colgroup>
        <col width="50" />
        <col width="500" />
        <col width="100" />
        <col width="50" />
      </colgroup>
      <thead>
        <tr>
          <th>�� ȣ</th>
          <th>�� ��</th>
          <th>�ۼ���</th>
          <th>�ۼ���</th>
          <th>�� ȸ</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td align="center">3</td>
          <td><a href="Board_View.jsp">�Խ��� ���Դϴ� 3<i class="far fa-images"></i>
					</a></td>
          <td align="center">�г���</td>
          <td align="center">����</td>
          <td align="center">0</td>
          
        </tr>
        <tr>
          <td align="center">2</td>
          <td><a href="Board_View.jsp">�Խ��� ���Դϴ� 2</a></td>
          <td align="center">�г���</td>
          <td align="center">����</td>
          <td align="center">0</td>
        </tr>
        <tr>
          <td align="center">1</td>
          <td><a href="dbr.jsp">���ɸ޴� �� ���ϴ¹��</a></td>
          <td align="center">�г���</td>
          <td align="center">����</td>
          <td align="center">0</td>
        </tr>
      </tbody>
      <tfoot>
        <tr>
          <td align="center" colspan="5">1</td>
        </tr>
      </tfoot>
    </table>
    <input type="button" value="ó�����Τ���" onclick="move('main.jsp');" />
    <input type="button" value="�۾���" onclick="move('dbr_write.jsp');" />
								
						
						
					
				</div>
			</section>
		</div>

		<!-- <script src="js/jquery-3.6.0.min.js"></script> -->
		<script>
			/* ������ �޴� Ŭ�� */
			/*   const click__profile = document.querySelector('.navbar__profile');
			  const click__profile2 = document.querySelector('.navbar__menu');
			  click__profile.addEventListener('click', () => {
			      click__profile2.classList.toggle('active');
			  }); */

			/*  $(".navbar__profile").on("click", function() {
			    $(".navbar__menu").addClass("active");
			    $(this).removeClass("active");
			}); */

			$(".navbar__profile").click(function() {
				if ($(".navbar__menu").attr('class') == 'navbar__menu') {
					$(".navbar__menu").addClass("active");
				} else {
					$(".navbar__menu").removeClass("active");
				}
			});

			$('.simpleLookBtn').click(function() {
				$('.simpleLook').css('display', 'inline-block');
				$('.closerLook').css('display', 'none');
				$('.secretLook').css('display', 'none');
			});

			$('.closerLookBtn').click(function() {

				$('.simpleLook').css('display', 'none');
				$('.closerLook').css('display', 'inline-block');
				$('.secretLook').css('display', 'none');
			});

			$('.secretLookBtn').click(function() {
				$('.simpleLook').css('display', 'none');
				$('.closerLook').css('display', 'none');
				$('.secretLook').css('display', 'inline-block');
			});
		</script>
</body>
</html>