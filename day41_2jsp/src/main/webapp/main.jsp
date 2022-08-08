<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="vo.BoardVO , java.util.ArrayList" %>
    <%request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="datas" class="java.util.ArrayList" scope="request"/> <!-- 컨트롤러가 request의 저장했으니 스코프 request로 설정 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title>
</head>
<body>

<table border="2">
	<tr>
		<th>번 호</th><th>제 목</th><th>작성자</th>
	</tr>
<%
	for(BoardVO v:(ArrayList<BoardVO>)datas){ // bDAO.selectAll(bVO) 를 뷰단에서는 사용하지 않음
		// 형변환은 제네릭때문?
%>
	<tr>
		<th><a href="controller.jsp?action=selectOne&bid=<%=v.getBid()%>"><%=v.getBid()%></a></th>
		<td><%=v.getTitle()%></td>
		<td><%=v.getWriter()%></td>
	</tr>
<%
	}
%>
</table>
<hr>
<a href="write.jsp">새로운 글 작성하기</a>
<hr>
<a href="search.jsp">검색하기</a>



</body>
</html>