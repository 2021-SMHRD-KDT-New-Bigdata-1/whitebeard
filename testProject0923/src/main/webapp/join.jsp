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