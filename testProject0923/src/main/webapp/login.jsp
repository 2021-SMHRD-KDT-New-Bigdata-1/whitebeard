<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/login.css">
</head>
<body>
 <div class="wrap">
        <div class="login">
            <h2>할인 2동</h2>
            <div class="login_sns">
            </div>
            <form action="LoginCon" method="post">
	            <div class="login_id">
	                <input type="text" name="ID" id="" placeholder="아이디를 입력하세요.">
	            </div>
	            <div class="login_pw">
	                <input type="password" name="PW" id="" placeholder="비밀번호를 입력하세요.">
	            </div>
	            <div class="submit">
	                <input type="submit" value="로그인">
	            </div>
            </form>
            <div class="login_etc">
                <div class="checkbox">
                    <input type="checkbox" name="" id=""> 로그인 상태 유지
                </div>
            </div>
            <div class="login_etc2">
                <a href="">아이디 찾기 | </a>
                <a href="">비밀번호 찾기 |</a>
                <a href="">회원가입</a>
            </div>
        </div>
    </div>
</body>
</html>