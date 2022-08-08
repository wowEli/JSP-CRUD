<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>작성페이지</title>
</head>
<body>

<form action="controller.jsp" method="post"><!-- controller.jsp?action=insert 요청이 url로 나와 잘 쓰지않음-->

	<input type="hidden" name="action" value="insert"> <!-- 히든을 사용해서 아무도 모르게 값 넘겨주기 -->
	<!-- 이 hidden을 통해 이제 마음껏 무슨 메서드 사용할건지 전달 가능 -->
	<table border="1">
		<tr>
			<td>제목</td>
			<td><input type="text" name="title" required></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><input type="text" name="content" required></td>
		</tr>
		<tr>
			<td>작성자</td>
			<td><input type="text" name="writer" required></td>
		</tr>
		<tr>
			<td colspan="2" align="right">
				<input type="submit" value="글 작성하기">
			</td>
		</tr>
	</table>
</form>

<hr>
<a href="controller.jsp?action=main">메인으로 돌아가기</a>

</body>
</html>