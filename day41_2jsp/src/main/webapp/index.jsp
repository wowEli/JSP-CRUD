<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 표지페이지 컨트롤러에서 메인이 나올수 있도록 도와주는 페이지 -->
<jsp:forward page="controller.jsp?action=main"></jsp:forward>
<!-- main.jsp에서 datas를 출력하려면 controller를 방문해야 하기 때문이다 -->