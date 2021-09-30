<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/join.css"/>

</head>
<body>
<body>

	<div id="wrapper">
	    <div id="content">
	        <header>
	            <div>
	                <h1>
	                    <a href = "main.jsp" id = "title"> <!-- ���� ��ũ -->
	                        <span>����2��</span>
	                        <!-- �����̵� ��� �ΰ��� ��ü -->
	                    </a>
	                    
	                </h1>
	            </div>
	        </header>
	        <div>
	            <form action = "JoinService" method = "post"  enctype="multipart/form-data">
	                <div>
	                    <h3>
	                        <label for="id">���̵�</label>
	                    </h3>
	                    <span class="signinput">
	                        <input type = "text" id = "id" class="int_input" name = "id" placeholder="������ �Է��ϼ���">
	                        <input type = "button" class = "is_check" value ="�ߺ�Ȯ��" onclick="idCheck()"><br>
	                        <br>
	                        <span id = "sp"></span>
	                    </span>
	                </div>
	                
	                <br>
	                <div>
	                    <h3>
	                        <label for="pw">��й�ȣ</label>
	                    </h3>
	                    <span class="signinput">
	                        <input type="password" id = "pw" class = "int" name = "pw" onchange="check_pw()" placeholder="������ �Է��ϻ���">
	                    </span>
	                </div>
	                
	                <div>
	                    <h3>
	                        <label for="pwcheck">��й�ȣ ��Ȯ��</label>
	                    </h3>
	                    <span class="signinput">
	                        <input type="password" id = "pwcheck" class="int" name = "pwcheck" onchange="check_pw()" placeholder="������ �Է��ϼ���">
	                    	<br>
	                    	<span id = "ch"></span>
	                    </span>
	                </div>
	                <br>
	                
	                <div>
						<h3>
							<label>������ ���� ���</label>
						</h3>
						<div>
							<input type="file" class=imginput accept="image/*" name="file" id = "file">
						</div>
						<div id="image_container">
							<img src = "">
						</div>
					</div>
					
	                <div>
	                    <h3>
	                        <label for="name">�̸�</label>
	                    </h3>
	                    <span class="signinput">
	                        <input type = "text" id = "name" class="int" name = "name" placeholder="������ �Է��ϼ���">
	                    </span>
	                </div>
	
					<div>
	                    <h3>
	                        <label for="nick">�г���</label>
	                    </h3>
	                    <span class="signinput">
	                        <input type = "text" id = "nick" class="int" name = "nick" placeholder="������ �Է��ϼ���">
	                    </span>
	                </div>
	                
	                <div>
	                    <h3>
	                        <label for="yy">�������</label>
	                    </h3>
	                    <div id = "birth" name = "birth">
	                        <span class = "signinput_bir">
	                            <input type ="text" id = "yy" name = "yy" placeholder="��(4��)" maxlength="4">
	                        </span>
	                        <span class="signinput_bir">
	                            <select id="mm" name = "mm">
	                                <option>��</option>
	                                <option value="01">1</option>
	                                <option value="02">2</option>
	                                <option value="03">3</option>
	                                <option value="04">4</option>
	                                <option value="05">5</option>
	                                <option value="06">6</option>
	                                <option value="07">7</option>
	                                <option value="08">8</option>
	                                <option value="09">9</option>
	                                <option value="10">10</option>
	                                <option value="11">11</option>
	                                <option value="12">12</option>
	                            </select>
	                        </span>
	                        <span>
	                        <span class = "signinput_bir">
	                            <input type="text" id="dd" name = "dd" maxlength="2" placeholder="��">
	                        </span>
	                    </div>
	                </div>
	                <div>
	                    <h3>
	                        <label for="email">�̸���</label>
	                    </h3>
	                    <span class="signinput">
	                        <input type="text" id = "email" class="int"  name = "email" placeholder="�̸��� �Է�"> 
	                    </span>
	                </div>
	
	                <div>
	                    <h3>    
	                        <label for="phone">�޴���ȭ</label>
	                    </h3>
	                    <span class="signinput">
	                        <input type="text" id = "phone" class="int"  name = "phone" placeholder="��ȭ��ȣ �Է�">
	                    </span>
	                </div>
	                    
	                <div class = "btn_area">
						<button class="btn_join">
							<span>�����ϱ�</span>
						</button>
					</div>
					<%=application.getRealPath("/upload") %>
	            </form>
	        </div>
	    </div>
	</div>
	
	<script src = "js/jquery-3.6.0.min.js"></script>
	<script>
		function idCheck(){

			var input = document.getElementById("id");
			console.log(input.value);

			$.ajax({
				type : "post",
				data : {id : input.value},
				url : "idCheckCon",
				dataType : "text",
				success : function(data) {

					var sp = document.getElementById("sp");

					if (data == "true") {
						sp.innerHTML = "����Ҽ� ���� ID�Դϴ�.";
						document.getElementById('sp').style.color='red'
						
					} else {
						sp.innerHTML = "����� �� �ִ� ID�Դϴ�.";
						document.getElementById('sp').style.color='blue';
					}

				},
				error : function() {
					alert("��Ž���!")
				},
			})
		};
	</script>
	<script>
        function check_pw(){
            var pw = document.getElementById('pw').value;
            if(document.getElementById('pw').value != '' && document.getElementById('pwcheck').value!=''){
                if(document.getElementById('pw').value==document.getElementById('pwcheck').value){
                    document.getElementById('ch').innerHTML='��й�ȣ�� ��ġ�մϴ�.'
                    document.getElementById('ch').style.color='blue';
                }
                else{
                    document.getElementById('ch').innerHTML='��й�ȣ�� ��ġ���� �ʽ��ϴ�.';
                    document.getElementById('ch').style.color='red'
                }
            }
        }
        
    </script>
   
    <script type = "text/javascript">
    $(function(){
    	$("#file").change(function(){
    		var ext = $(this).val().split('.').pop().toLowerCase();
    		if($.inArray(ext, ['gif', 'pnp', 'jpg', 'jpeg'])== -1){
    			resetFormElement($(this));
    			window.alert('�̹��� ������ �ƴմϴ�!');
    		}else{
    			var file = $(this).prop("files")[0];
    			var vlobURL = window.URL.createObjectURL(file);
    			/* alert(vlobURL); */
    			$('#image_container img').attr('src', vlobURL).css('width', '100%');
    			$('#image_container').slideDown();
    		}
    		function resetFormElement($obj){
    			$obj.val("");
    		}
    	});
    });
    </script>
    
    
</body>
</html>