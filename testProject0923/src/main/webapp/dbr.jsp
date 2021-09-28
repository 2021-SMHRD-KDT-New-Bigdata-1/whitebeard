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

</head>
<body>
	<%
	MemberVO vo = (MemberVO) session.getAttribute("vo");
	%>



	<nav class="navbar">
		<div class="navbar__logo">�ΰ� �ڸ�</div>

		<div class="navbar__main" onclick="location.href='main.jsp'">����2��</div>

		<%
		if (vo == null) {
			out.print("<div class='' onclick='location.href=\"login.jsp\"'>�α���</div></nav>");

		} else {
			out.print("<div class='navbar__profile'>������</div></nav>");
			out.print("<ul class='navbar__menu'>");
			out.print("<li><a href='mypage.jsp'>����������</a></li>");
			out.print("<li><a href=''>����ǥ</a></li>");
			out.print("<li><a href=''>������</a></li>");
			out.print("<li><a href=''>�Ǹ��ڵ��</a></li>");
			out.print("<li><a href='LogoutCon.java'>�α׾ƿ�</a></li>");
			out.print("</ul>");
		}
		%>
		<div>
			<h1 id="dbr">�㺭��</h1>
			<div id="dbr_box">
				<div id="dbr_box_body">
					<div id="dbr_box_body_title">
						<h4>�������� �������� �����ϴ¹�</h4>
					</div>
					<div>
						<div id="dbr_box_body_name">�͸�</div>
						<div id="dbr_box_body_time">�ð�</div>
					</div>

					<div id="dbr_box_body_img">
						<img src="assets/img/agr.jpg" alt="" />
					</div>
					<div id="dbr_box_body_text">�̾��ϴ� �̰� �����ַ��� ��׷β�����.. ������ �罺��
						�ο���� ������ȭ��? ��¥ ������ְ��ڵ��� �ο��̴�.. ��������� �����䰡 �³�? ��¥ ������� �����̴�..��¥������
						�ǳ�������ôµ� �հ��������� ȣī�� �Ǽ� �����ְ� �������� �����̵ȳ����亸�� ��¥������ ���ݽ����� ������ �뷡����
						�������� �����︮�������� ������ ��ġ�鼭 ������ ����������.. �׸��� ������ �� īī�þտ� �������� �Ŵ��� ��
						�罺�ɰ� ���ڱ� ���İ��� ��Ÿ���� �ν������� ���������� �����䰡 ���ٸ� ������ ��ų �ڴ� ���ۿ� ���� ��� �ٶ�ó��
						���������� ��¥ ������ó������ ������̸� �ȿ���������� ��¥ �ʹ� ���ݽ����� �����並 �ֱٿ� �˾Ҵµ� �̾��ϴ�..
						����20ȭ���µ� ��¥ �����似�볪�ͼ� �ʹ� ���ݽ����� ��ξ�ϰ� ū�ź��� ���� �� ���� �˼����� �߾��̶��ؾߵǳ�
						�׷������� �̻��ϰ� �����ִ�.. �ó�� ���̸������Ű��� ���������̰�..�׸��� ������ֿ��ϳ� �Ϳ�� �����並���°Ͱ���
						���ݵ� ��Ҿ� �׸�������信 ������罺�� ���̽ο��� �̱�� �Ű������� ���´ٴ°� �����?? �׸������ʹֿ� �ĺôµ� �̰�
						�������� ��¥��Ʈ��?? ������ �����信 ������ �űޱ�����?�� ������罺�� ��ü�Ѱź��� ��¥ ���� �̰ź���
						����ݸԾ���� �� �Ҹ� ������ �������� ;; ��¥ ���� �������µ�.. ���� �����̸� ��¥ �����ߵ� ��¥ ���赵
						�ı���Ű�°žƴϾ� .. �� ��¥ ������罺�ɰ� ������ �Ǵٴ� ��¥ �����������ߴ�.. ������׶� ��Ӻ������ε� ����
						�����̳�..? ��.. ���� �罺�� ����ʹ�.. ��¥���� �̷��� �ű� �ְ����� �Ǿ����� ������������ �� �ߵ�����������
						���� �����⵵�ϰ� ���⵵�ϰ� ���ݵ��ϰ� �������������� �����ϳ�.. �ƹ�ư ������� ��¥ �ִ����ְŸ�����..��������</div>
				</div>
				<div id="dbr_box_tail">
					<div class="dbr_box_tail_coments">
						<div id="form-commentInfo">
							<div id="comment-count">
								��� <span id="count">0</span>
							</div>
							<input id="comment-input" placeholder="����� �Է��� �ּ���." />
							<button id="submit">���</button>
						</div>
						<div id="comments"></div>
						<script src="assets/javascripts/dbrjs.js"></script>
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