<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="vo.BoardVO , java.util.ArrayList"%>
    <%request.setCharacterEncoding("UTF-8"); %>
    <jsp:useBean id="datas" class="java.util.ArrayList" scope="request"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="controller.jsp" method="post">
	<input type="hidden" name="action" value="search">
	<input type="text" name="title">
	<input type="submit" value="게시글 검색하기">
</form>
<hr>
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
<a href="controller.jsp?action=main">메인으로 돌아가기</a>

</body>
</html>