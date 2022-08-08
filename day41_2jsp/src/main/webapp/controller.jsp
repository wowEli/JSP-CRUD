<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error/error.jsp" import="java.util.ArrayList , vo.BoardVO"%>
    <!-- 에러 페이지도 등록 -->
    <%request.setCharacterEncoding("UTF-8"); %>
    <jsp:useBean id="bDAO" class="dao.BoardDAO"></jsp:useBean>
    <jsp:useBean id="bVO" class="vo.BoardVO"></jsp:useBean>
    <jsp:useBean id="mDAO" class="dao.MemberDAO"></jsp:useBean>
    <jsp:useBean id="mVO" class="vo.MemberVO"></jsp:useBean>
    <jsp:setProperty property="*" name="bVO"/>
    <jsp:setProperty property="*" name="mVO"/>

<%
	String action = request.getParameter("action"); // 어떤 요청을 받았는지 파악
	
	if(action.equals("main")){
		ArrayList<BoardVO> datas = bDAO.selectAll(bVO); // 배열 저장 후
		request.setAttribute("datas", datas); // 페이지 단위 request에 속성추가하면서 정보 추가
		pageContext.forward("main.jsp"); // 정보를 전달해야 되기 때문에 forword 사용
		// pageContext == jsp 명령어를 쓰는 자바의 내장객체
	}
	
	else if(action.equals("insert")){
		if(bDAO.insert(bVO)){
			response.sendRedirect("controller.jsp?action=main");
		}
		else{
			throw new Exception("insert 오류");
		}
	}
	
	else if(action.equals("selectOne")){
		request.setAttribute("data",bDAO.selectOne(bVO));
		pageContext.forward("board.jsp");
	}
	
	else if(action.equals("search")){
		request.setAttribute("datas", bDAO.search(bVO));
		pageContext.forward("search.jsp");
		
	}
	
	else if(action.equals("login")){
		if(mDAO.selectOne(mVO)==null){
			out.println("<script> alert('로그인에 실패했습니다.');location.href='login.jsp'</script>");
		}
		else{
			out.println("<script> alert('로그인에 성공했습니다.');location.href='index.jsp'</script>");
		}
	}
	
	
	
	else{
		out.println("<script> alert('action 파라미터 값이 올바르지 않습니다');location.href='controller.jsp?action=main'</script>");
	}
%>