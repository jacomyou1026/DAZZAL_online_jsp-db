<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 리다이렉트는 기본적으로 다른 페이지에 데이터를 전송할 수 없지만 --%>
	<%-- URL에 파라미터를 첨부한다면 가능하다. --%>
	<%
		response.sendRedirect("Test03_result.jsp?x=10&y=20");
	%>
</body>
</html>