<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 넘겨받은 파라미터를 각 영역 별 속성으로 재저장
	String s1 = request.getParameter("page_test");
	String s2 = request.getParameter("request_test");
	String s3 = request.getParameter("session_test");
	String s4 = request.getParameter("application_test");

	pageContext.setAttribute("tmp", s1); // 이 페이지 안에서만 쓸 수 있음 (pageContext객체는 페이지 마다 1개씩 존재)
	request.setAttribute("tmp", s2); // 포워드되는 다음 페이지까지 쓸 수 있음 (request 객체는 포워딩 된 도착페이지가 끝나면 사라진다.)
	session.setAttribute("tmp", s3); // 클-서 통신을 유지하는 하는 동안 (session 객체는 클라(세션)1 당 1개씩 )
	application.setAttribute("tmp", s4); // 서버가 운영되는 동안(application 객체 서버 통틀어 1개만 존재)
	
	// 속성 저장 후 Test02.jsp로 포워드
	pageContext.forward("Test02.jsp");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>