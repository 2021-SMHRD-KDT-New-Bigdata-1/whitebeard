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

<!-- �����ϸ� ��Ĺ ������ �ȵ˴ϴ�.
����� ������ ó�� �����Ҷ����� ����ǥ�� �ߴµ� ��� ���°ǰ���? -->

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
        /* ���߿� ���� ���� */
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
                    <a href = "#" id = "title"> <!-- ���� ��ũ -->
                        <span>�����̵�</span>
                        <!-- �����̵� ��� �ΰ�� ��ü -->
                    </a>
                    
                </h1>
            </div>
        </header>

        <div>
            <form action = "#" method = "post">
                <div>
                    <h3>
                        <label for="id">���̵�</label>
                    </h3>
                    <span class="signinput">
                        <input type = "text" id = "id" class="int_input" placeholder="������ �Է��ϼ���">
                        <span>
                            <button class="check">�ߺ�Ȯ��</button>
                        </span>
                    </span>
                </div>
                <div>
                    <h3>
                        <label for="pw">��й�ȣ</label>
                    </h3>
                    <span class="signinput">
                        <input type="password" id = "pw" class = "int" placeholder="������ �Է��ϻ���">
                    </span>
                </div>
                <div>
                    <h3>
                        <label for="pwck">��й�ȣ ��Ȯ��</label>
                    </h3>
                    <span class="signinput">
                        <input type="password" id = "pwck" class="int" placeholder="������ �Է��ϼ���">
                    </span>
                </div>
                <div>
                    <h3>
                        <label for="name">�̸�</label>
                    </h3>
                    <span class="signinput">
                        <input type = "text" id = "name" class="int" placeholder="������ �Է��ϼ���">
                    </span>
                </div>

                <div>
                    <h3>
                        <label for="yy">�������</label>
                    </h3>
                    <span id = "birth">
                        <span class = "signinput_bir">
                            <input type ="text" id = "yy" placeholder="��(4��)" maxlength="4">
                        </span>
                        <span class="signinput_bir">
                            <select id="mm">
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
                            <input type="text" id="dd"  maxlength="2" placeholder="��">
                        </span>
                    </span>
                </div>
                <div>
                    <h3>
                        <label for="email">���� Ȯ�� �̸���(����)</label>
                    </h3>
                    <span class="signinput">
                        <input type="text" id = "email" class="int" placeholder="�����Է�"> 
                    </span>
                </div>

                <div>
                    <h3>    
                        <label for="phone">�޴���ȭ</label>
                    </h3>
                    <span class="signinput">
                        <input type="text" id = "phone" class="int_input" placeholder="��ȭ��ȣ �Է�">
                        <span>
                            <button>������ȣ �ޱ�</button>
                        </span>
                    </span>
                    <span class="signinput">
                        <input type="text" class="int" placeholder="������ȣ�� �Է��ϼ���">
                    </span>
                    <div class = "btn_area">
                        <button class = "btn_join">
                            <span>�����ϱ�</span>
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>