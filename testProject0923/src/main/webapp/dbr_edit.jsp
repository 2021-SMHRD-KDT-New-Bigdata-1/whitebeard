<%@page import="java.util.ArrayList"%>
<%@page import="com.VO.AnonymousVO"%>
<%@page import="com.DAO.dbrDAO"%>
<%@page import="java.sql.SQLException"%>
<%@page import="com.VO.MemberVO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>

    <script type="text/javascript">
      function move(url) {
        location.href = url;
      }
      function boardWriteCheck() {
        var form = document.BoardWriteForm;
        return true;
      }
    </script>
  </head>

  <body>
   <%
   MemberVO vo = (MemberVO)session.getAttribute("vo");
	dbrDAO dbr = new dbrDAO();  

  
   %>
  
  <% //
  String member_id = vo.getMember_id();
  int ano_seq = (int) session.getAttribute("ano_seq");
  ArrayList<AnonymousVO> vo2 = dbr.select_all_dbr(ano_seq);

 
  %>
 
 
 
  	
  
    <table summary="글쓰기 전체 테이블">
      <form
        name="dbrWriteForm"
        method="post"
        action="dbredit"
        onsubmit="return boardWriteCheck();"
      >
        <colgroup>
          <col width="20%" />
          <col width="80%" />
        </colgroup>

        <table summary="테이블 구성">
          <caption>
            담벼락 글쓰기
          </caption>
          <tr>
            <td>제 목</td>
            <td><input type="text" name="ano_subject" value="<%=vo2.get(0).getAno_subject()%>" /></td>
          </tr>
  
          <tr>
            <td>내 용</td>
            <td><input type="text" name="ano_content" rows="10" cols="100" value="<%=vo2.get(0).getAno_content()%>"></td>
          </tr>
       
          <tr>
            <td colspan="2"><hr size="1" /></td>
          </tr>
          <tr>
            <td colspan="2">
              <div align="center">
                <input type="submit" value="등록" />&nbsp;&nbsp;
                <input
                  type="button"
                  value="뒤로"
                  onclick="move('main.jsp');"
                />
              </div>
            </td>
          </tr>
        </table>
      </form>
    </table>
  </body>
</html>