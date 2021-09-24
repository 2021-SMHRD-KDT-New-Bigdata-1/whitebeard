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
	<!-- ��� �޴� -->
	<nav class="navbar">       
        <div class="navbar__logo">
            �ΰ� �ڸ�
        </div>

        <div class="navbar__main">
            ����2��  ����
        </div>

        <div class="navbar__profile">
            �����ʻ���           
        </div>
    </nav>


	<!-- ������ ������ ������ �޴� -->
    <ul class="navbar__menu">
        <li><a href="">����������</a></li>
        <li><a href="">���߿��߰�</a></li>        
    </ul>

    
    <!-- �˻� -->
    <form action="" class="searchBar" align="center">
        <input type="text" placeholder="�˻�(��ǰ��, ������)">    
            <button>�˻�</button>
        </input>
    </form><br>


	<!-- ��ư 3�� -->
    <form action="" align="center">
        <div class="simpleLookBtn" style="display:inline"><button>������</button></div>
        <div class="closerLookBtn" style="display:inline"><button>�ڼ���</button></div>
        <div class="secretLookBtn" style="display:inline"><button>�㺭��</button></div>
    </form><br>
    
    <!-- ������ ������  -->
    <section>
    	<div class="simpleLook">
	    	<div class=""><img src="" alt="">��⿣ �̹����� �־��ּ���</div>
	    	<div>���� ����</div>
	    	<div>��ȣ�� ����</div>
    	</div>
    </section>
    
    
    <!-- �ڼ��� ������  -->
	<section>
		<div class="closerLook">
	    	<div class=""><img src="" alt="">��⿣ �̹����� �־��ּ���</div>
	    	<div>���� ����</div>
	    	<div>��ȣ�� ����</div>
	    	<div>�Խ��� ����</div>
	    	<div>�Խñ� ����</div>
	    	<div>���� ����</div>
	    	<div>���ΰ� ����</div>
	    	<div>�ǸŰ� ����</div>
    	</div>
    </section>
    
    
    <!-- �㺭�� -->
    <section>
    	<div class="secretLook">
	    	<div class=""><img src="" alt="">��⿣ �̹����� �־��ּ���</div>
	    	<div>���� ����</div>
	    	<div>�͸� ����</div>
	    </div>
    </section>

    <script>
    
    	/* ������ �޴� Ŭ�� */
        const click__profile = document.querySelector('.navbar__profile');
        const click__profile2 = document.querySelector('.navbar__menu');
        click__profile.addEventListener('click', () => {
            click__profile2.classList.toggle('active');
        });
        
        /* �� ���� ��ư */       
        const simpleLookBtn = document.querySelector('.simpleLookBtn');
        const closerLookBtn = document.querySelector('.closerLookBtn');
        const secretLookBtn = document.querySelector('.secretLookBtn');
        
        /* ��ư Ŭ�� �̺�Ʈ */
        const simpleLook = document.querySelector('.simpleLook');
        const closerLook = document.querySelector('.closerLook');
        const secretLook = document.querySelector('.secretLook');
        
        closerLookBtn.addEventListener('click', () => {
            closerLook.classList.toggle('active');
            simpleLook.classList.toggle('deactive');
            secretLook.classList.toggle('deactive');
        });
        
        secretLookBtn.addEventListener('click', () => {
        	secretLook.classList.toggle('active');
            simpleLook.classList.toggle('deactive');
            closerLook.classList.toggle('deactive');
        });
        
        simpleLookBtn.addEventListener('click', () => {
        	simpleLook.classList.toggle('active');
        	closerLook.classList.toggle('deactive');
            secretLook.classList.toggle('deactive');
        });
        
    </script>
</body>
</html>