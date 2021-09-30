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
	                    <a href = "main.jsp" id = "title"> <!-- 메인 링크 -->
	                        <span>할인2동</span>
	                        <!-- 할인이동 대신 로고로 대체 -->
	                    </a>
	                    
	                </h1>
	            </div>
	        </header>
	        <div>
	            <form action = "JoinService" method = "post"  enctype="multipart/form-data">
	                <div>
	                    <h3>
	                        <label for="id">아이디</label>
	                    </h3>
	                    <span class="signinput">
	                        <input type = "text" id = "id" class="int_input" name = "id" placeholder="내용을 입력하세요">
	                        <input type = "button" class = "is_check" value ="중복확인" onclick="idCheck()"><br>
	                        <br>
	                        <span id = "sp"></span>
	                    </span>
	                </div>
	                
	                <br>
	                <div>
	                    <h3>
	                        <label for="pw">비밀번호</label>
	                    </h3>
	                    <span class="signinput">
	                        <input type="password" id = "pw" class = "int" name = "pw" onchange="check_pw()" placeholder="내용을 입력하새요">
	                    </span>
	                </div>
	                
	                <div>
	                    <h3>
	                        <label for="pwcheck">비밀번호 재확인</label>
	                    </h3>
	                    <span class="signinput">
	                        <input type="password" id = "pwcheck" class="int" name = "pwcheck" onchange="check_pw()" placeholder="내용을 입력하세요">
	                    	<br>
	                    	<span id = "ch"></span>
	                    </span>
	                </div>
	                <br>
	                
	                <div>
						<h3>
							<label>프로필 사진 등록</label>
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
	                        <label for="name">이름</label>
	                    </h3>
	                    <span class="signinput">
	                        <input type = "text" id = "name" class="int" name = "name" placeholder="내용을 입력하세요">
	                    </span>
	                </div>
	
					<div>
	                    <h3>
	                        <label for="nick">닉네임</label>
	                    </h3>
	                    <span class="signinput">
	                        <input type = "text" id = "nick" class="int" name = "nick" placeholder="내용을 입력하세요">
	                    </span>
	                </div>
	                
	                <div>
	                    <h3>
	                        <label for="yy">생년월일</label>
	                    </h3>
	                    <div id = "birth" name = "birth">
	                        <span class = "signinput_bir">
	                            <input type ="text" id = "yy" name = "yy" placeholder="년(4자)" maxlength="4">
	                        </span>
	                        <span class="signinput_bir">
	                            <select id="mm" name = "mm">
	                                <option>월</option>
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
	                            <input type="text" id="dd" name = "dd" maxlength="2" placeholder="일">
	                        </span>
	                    </div>
	                </div>
	                <div>
	                    <h3>
	                        <label for="email">이메일</label>
	                    </h3>
	                    <span class="signinput">
	                        <input type="text" id = "email" class="int"  name = "email" placeholder="이메일 입력"> 
	                    </span>
	                </div>
	
	                <div>
	                    <h3>    
	                        <label for="phone">휴대전화</label>
	                    </h3>
	                    <span class="signinput">
	                        <input type="text" id = "phone" class="int"  name = "phone" placeholder="전화번호 입력">
	                    </span>
	                </div>
	                    
	                <div class = "btn_area">
						<button class="btn_join">
							<span>가입하기</span>
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
						sp.innerHTML = "사용할수 없는 ID입니다.";
						document.getElementById('sp').style.color='red'
						
					} else {
						sp.innerHTML = "사용할 수 있는 ID입니다.";
						document.getElementById('sp').style.color='blue';
					}

				},
				error : function() {
					alert("통신실패!")
				},
			})
		};
	</script>
	<script>
        function check_pw(){
            var pw = document.getElementById('pw').value;
            if(document.getElementById('pw').value != '' && document.getElementById('pwcheck').value!=''){
                if(document.getElementById('pw').value==document.getElementById('pwcheck').value){
                    document.getElementById('ch').innerHTML='비밀번호가 일치합니다.'
                    document.getElementById('ch').style.color='blue';
                }
                else{
                    document.getElementById('ch').innerHTML='비밀번호가 일치하지 않습니다.';
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
    			window.alert('이미지 파일이 아닙니다!');
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