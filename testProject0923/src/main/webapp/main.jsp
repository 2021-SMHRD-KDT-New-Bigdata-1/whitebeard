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
    <div align="center">
        <span class="simpleLookBtn" style="display:inline"><button>������</button></span>
        <span class="closerLookBtn" style="display:inline"><button>�ڼ���</button></span>
        <span class="secretLookBtn" style="display:inline"><button>�㺭��</button></span>
    </div><br>
    
    
    <!-- ������ ������  -->
    <section>
    	<div class="simpleLook" onclick="location.href='sns.jsp'">
		    <span class=""><img src="" alt="">��⿣ �̹����� �־��ּ���</span>
		    <span>���� ����</span>
		    <span>��ǰ �̸�</span>
		    <span>��ȣ�� ����</span>
    	</div>  
    
    
    <!-- �ڼ��� ������  -->
	
		<div class="closerLook">
	    	<span class=""><img src="" alt="">��⿣ �̹����� �־��ּ���</span>
	    	<span>���� ����</span>
	    	<span>��ȣ�� ����</span>
	    	<span>�Խ��� ����</span>
	    	<span>�Խñ� ����</span>
	    	<span>���� ����</span>
	    	<span>���ΰ� ����</span>
	    	<span>�ǸŰ� ����</span>
    	</div>
    
    
    <!-- �㺭�� -->
    	<div class="secretLook">
	    	<span class=""><img src="" alt="">��⿣ �̹����� �־��ּ���</span>
	    	<span>���� ����</span>
	    	<span>�͸� ����</span>
	    </div>
    </section>

	<script src="js/jquery-3.6.0.min.js"></script>
    <script>
    
    	/* ������ �޴� Ŭ�� */
        const click__profile = document.querySelector('.navbar__profile');
        const click__profile2 = document.querySelector('.navbar__menu');
        click__profile.addEventListener('click', () => {
            click__profile2.classList.toggle('active');
        });
        
        /* �� ���� ��ư */   
        
        $('.closerLook').hide();
        $('.secretLook').hide();
        
        $('.closerLookBtn').click(function(){
	       	$('.closerLook').show();
	       		$('.simpleLook').hide();	       		
	      		$('.secretLook').hide();       		       		
	       		       
	    });       	
    
        
        $('.secretLookBtn').click(function(){
	       	$('.secretLook').show();
	       		$('.simpleLook').hide();	       		
	      		$('.closerLook').hide();       		       		
	       		       
	    });
         
        
        $('.simpleLookBtn').click(function(){
	       	$('.simpleLook').show();
	       		$('.closerLook').hide();	       		
	      		$('.secretLook').hide();       		       		
	       		       
	    });
        
        
    </script>
</body>
</html>