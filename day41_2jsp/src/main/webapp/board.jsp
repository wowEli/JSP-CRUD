<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="vo.BoardVO"%>
<jsp:useBean id="data" class="vo.BoardVO" scope="request"></jsp:useBean> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 페이지</title>
</head>
<body>

<table border="2">
<tr>
	<th>제목</th>
	<td><%=data.getTitle()%></td>
</tr>
<tr>
	<th>내용</th>
	<td><%=data.getContent()%></td>
</tr>
<tr>
	<th>작성자</th>
	<td><%=data.getWriter()%></td>
</tr>

</table>

<a href="controller.jsp?action=main">메인으로 돌아가기</a>

</body>
</html>