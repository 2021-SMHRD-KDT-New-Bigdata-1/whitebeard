<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<script>
function move(url) {
	location.href=url;
}

function boardUpdateCheck() {
	var form = document.BoardUpdateForm;
	return true;
}
</script>

<body>

	<table summary="�ۼ��� ��ü ���̺�">
		<form name="dbr_edit_Form" method="post" action="main.jsp" 
														onsubmit="return boardUpdateCheck();" >
		
   		<colgroup>
   			<col width="20%">
   			<col width="80%">
   		</colgroup>
   	

		<table summary="���̺� ����" >
		<caption>�� �����ϱ�</caption>	
    	
    		<tr>
     			<td>�� ��</td>
     			<td><input type=text name=title></td>
    		</tr>
    		<tr>
     			<td>�� ��</td>
     			<td><textarea name=content rows ="10" cols="100"></textarea></td>
    		</tr>
    		<tr>
     			<td>��й�ȣ</td> 
     			<td><input type=password name=password size=15 maxlength=15></td>
    		</tr>
    		<tr>
     			<td colspan=2><hr size=1></td>
    		</tr>
    		<tr>
     			<td colspan="2"><div align="center">
     			<input type="submit" value="���� �Ϸ�">&nbsp;&nbsp;
				<input type=reset value="�ٽ� ����"> 
         		<input type="button" value="�ڷ�" onclick="move('main.jsp');"></div>
     			</td>
    		</tr> 
		</table>
	</form> 
</table>

</body>
</html>