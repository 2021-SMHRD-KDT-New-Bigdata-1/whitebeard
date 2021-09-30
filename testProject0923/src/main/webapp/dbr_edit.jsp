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

	<table summary="글수정 전체 테이블">
		<form name="dbr_edit_Form" method="post" action="main.jsp" 
														onsubmit="return boardUpdateCheck();" >
		
   		<colgroup>
   			<col width="20%">
   			<col width="80%">
   		</colgroup>
   	

		<table summary="테이블 구성" >
		<caption>글 수정하기</caption>	
    	
    		<tr>
     			<td>제 목</td>
     			<td><input type=text name=title></td>
    		</tr>
    		<tr>
     			<td>내 용</td>
     			<td><textarea name=content rows ="10" cols="100"></textarea></td>
    		</tr>
    		<tr>
     			<td>비밀번호</td> 
     			<td><input type=password name=password size=15 maxlength=15></td>
    		</tr>
    		<tr>
     			<td colspan=2><hr size=1></td>
    		</tr>
    		<tr>
     			<td colspan="2"><div align="center">
     			<input type="submit" value="수정 완료">&nbsp;&nbsp;
				<input type=reset value="다시 수정"> 
         		<input type="button" value="뒤로" onclick="move('main.jsp');"></div>
     			</td>
    		</tr> 
		</table>
	</form> 
</table>

</body>
</html>