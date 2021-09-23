<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/join.css">
</head>
<body>

<!-- 실행하면 톰캣 설정이 안됩니다.
깃허브 폴더가 처음 설정할때부터 오류표시 뜨는데 상관 없는건가요? -->

<style>
    a{
        text-decoration: none;
        color: inherit;
    }
    body{
        height: 100%;
        background: #f5f6f7;
    }
    html{
        height: 100%;
    }
    header{
        padding-top: 62px;
        padding-bottom: 20px;
        text-align: center;
    }
    #wrapper{
        position: relative;
        height: 100%;
    }
    #content{
        left: 50%;
        position: absolute;
        transform: translate(-50%);
        text-align: center;
        width: 460px;
        margin: auto;
    }
    h3{
        margin: 19px 0px 8px;
        text-align: left;
        font-size: 14px;
    }
    .check{
        height: 100%;
    }
    .signinput{
        display: block;
        width: 100%;
        height: 51px;
        border: solid 1px #dadada;
        padding: 10px 14px 10px 14px;
        box-sizing: border-box;
        background: #fff;
        position: relative;
    }
    .signinput_bir{
        display: inline;
        position: relative;
        width: 100%;
        height: 51px;
        border: solid 1px #dadada;
        padding: 10px 14px 10px 14px;
        background: #fff;
        box-sizing: border-box;
    }
    .int{
        display: block;
        position: relative;
        width: 100%;
        height: 29px;
        border: none;
        background: #fff;
        font-size: 15px;
    }
    #yy, #mm, #dd{
        width: 113px;
        height: 29px;
        border: none;
        outline: none;
    }
    select{
        width: 85px;
        height: 25px;
        outline: none;

        border: 1px solid;
    }
    .int_input{
        display: inline;
        position: relative;
        width: 70%;
        height: 29px;
        border: none;
        background: #fff;
        font-size: 15px;
    }
    #birth{
        display: table;
        width: 100%;
    }
    #yy, #mm, #dd{
        display: table-cell;
    }
    .btn_area{
        margin: 30px 0 91px;
    }
    .btn_join{
        width: 100%;
        padding: 21px 0px 17px;
        border: 0;
        color: #fff;
        background-color: rgb(224, 34, 34);
        /* 나중에 색상 변경 */
        font-size: 20px;
        font-weight: 400;
    }
</style>
</head>
<body>

<div id="wrapper">
    <div id="content">
        <header>
            <div>
                <h1>
                    <a href = "#" id = "title"> <!-- 메인 링크 -->
                        <span>할인이동</span>
                        <!-- 할인이동 대신 로고로 대체 -->
                    </a>
                    
                </h1>
            </div>
        </header>

        <div>
            <form action = "#" method = "post">
                <div>
                    <h3>
                        <label for="id">아이디</label>
                    </h3>
                    <span class="signinput">
                        <input type = "text" id = "id" class="int_input" placeholder="내용을 입력하세요">
                        <span>
                            <button class="check">중복확인</button>
                        </span>
                    </span>
                </div>
                <div>
                    <h3>
                        <label for="pw">비밀번호</label>
                    </h3>
                    <span class="signinput">
                        <input type="password" id = "pw" class = "int" placeholder="내용을 입력하새요">
                    </span>
                </div>
                <div>
                    <h3>
                        <label for="pwck">비밀번호 재확인</label>
                    </h3>
                    <span class="signinput">
                        <input type="password" id = "pwck" class="int" placeholder="내용을 입력하세요">
                    </span>
                </div>
                <div>
                    <h3>
                        <label for="name">이름</label>
                    </h3>
                    <span class="signinput">
                        <input type = "text" id = "name" class="int" placeholder="내용을 입력하세요">
                    </span>
                </div>

                <div>
                    <h3>
                        <label for="yy">생년월일</label>
                    </h3>
                    <span id = "birth">
                        <span class = "signinput_bir">
                            <input type ="text" id = "yy" placeholder="년(4자)" maxlength="4">
                        </span>
                        <span class="signinput_bir">
                            <select id="mm">
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
                            <input type="text" id="dd"  maxlength="2" placeholder="일">
                        </span>
                    </span>
                </div>
                <div>
                    <h3>
                        <label for="email">본인 확인 이메일(선택)</label>
                    </h3>
                    <span class="signinput">
                        <input type="text" id = "email" class="int" placeholder="선택입력"> 
                    </span>
                </div>

                <div>
                    <h3>    
                        <label for="phone">휴대전화</label>
                    </h3>
                    <span class="signinput">
                        <input type="text" id = "phone" class="int_input" placeholder="전화번호 입력">
                        <span>
                            <button>인증번호 받기</button>
                        </span>
                    </span>
                    <span class="signinput">
                        <input type="text" class="int" placeholder="인증번호를 입력하세요">
                    </span>
                    <div class = "btn_area">
                        <button class = "btn_join">
                            <span>가입하기</span>
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>