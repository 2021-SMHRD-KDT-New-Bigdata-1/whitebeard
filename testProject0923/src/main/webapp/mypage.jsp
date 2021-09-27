<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/mypagestyle.css">
<link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"
  />
</head>
<body>
	<div class="wrap">
        <div class="mypage">
            <h2>���� 2��</h2>
            <h4>���� ������</h4>
            <div class="imgAndNick">
                <div class="profilediv" style="background: #BDBDBD;">
                    <img class="profile" src="assets/img/seller.png">
                </div>
                <div class="nick">
                    <p>����</p>
                </div>
            </div>
            
            
            <div class="submit">
                <input type="submit" value="������ ���� / ȸ������ ���� ">
            </div>
            <hr>
            
            <!-- �� ���� ���� -->
            <div class="plus">
                <a class="sub" id="ground">�� ���� ����</a>
                <div class="icon1"><i class="fas fa-map-marker-alt"></i></div>
            </div>
            <form action="MyPageService">
                <input type="text" id="ground_input" class="town">
                <input type="submit" value="Ȯ��" id="ground_input_check">
            </form>
            
            
            <!-- �� ���� ��ǰ -->
            <div class="plus">
                <a class="sub" id="favitem">�� ���� ��ǰ</a>
                <div class="icon1"><i class="fas fa-shopping-cart"></i></div>
            </div>
            <form action="MyPageService">
                <input type="text" id="item_input" class="favitem">
                <input type="submit" value="Ȯ��" id="item_input_check">
            </form>
            
         
         	<!-- �� ���� ����� -->
            <div class="plus">
                <a class="sub" id="favshop">�� ���� �����</a>
                <div class="icon1"><i class="fas fa-store-alt"></i></div>
            </div>
            <form action="MyPageService">
                <input type="text" id="shop_input">
                <input type="submit" value="Ȯ��" id="shop_input_check">
            </form>
            
            
            <!-- �������� -->
            <div class="plus">
                <a class="sub">��������</a>
                <div class="icon1"><i class="fas fa-volume-up"></i></div>
            </div>
            
            
            <!-- ����ǥ -->
            <div class="plus">
                <a class="sub">����ǥ</a>
                <div class="icon1"><i class="fas fa-trophy"></i></div>
            </div>
            
            
            <!-- �Ǹ��� ��� -->
            <div class="plus">
                <a class="sub">�Ǹ��� ���</a>
                <div class="icon1"><i class="fas fa-user-check"></i></div>
            </div>
        </div>
    </div>
    
    <script src="js/jquery-3.6.0.min.js"></script>
    <script>
    
    /* �� ���� Ŭ��  */
   $("#ground").click(function(){
	   if($("#ground_input").attr('class')==''){
		   $("#ground_input").addClass("active");
		   $("#ground_input_check").addClass("active");
	   }else{
		   $("#ground_input").removeClass("active");
		   $("#ground_input_check").removeClass("active");
	   }	
	});
   
   

	  

     
   
    
     
  
    
    </script>
</body>
</html>