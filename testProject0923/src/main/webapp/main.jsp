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
	<nav class="navbar">       
        <div class="navbar__logo">
            �ΰ� �ڸ�
        </div>

        <div class="navbar__main">
            ����2��
        </div>

        <div class="navbar__profile">
            �����ʻ���           
        </div>
    </nav>


    <ul class="navbar__menu">
        <li><a href="">����������</a></li>
        <li><a href="">���߿��߰�</a></li>        
    </ul>

    
    <form action="" class="searchBar" align="center">
        <input type="text" placeholder="�˻�(��ǰ��, ������)">    
            <button>�˻�</button>
        </input>
    </form><br>


    <form action="" align="center">
        <div style="display:inline"><button>�㺭��</button></div>
        <div style="display:inline"><button>������</button></div>
        <div style="display:inline"><button>�ڼ���</button></div>
    </form>


    <script>
        const click__profile = document.querySelector('.navbar__profile');
        const click__profile2 = document.querySelector('.navbar__menu');
        click__profile.addEventListener('click', () => {
            click__profile2.classList.toggle('active');
        });
    </script>
</body>
</html>