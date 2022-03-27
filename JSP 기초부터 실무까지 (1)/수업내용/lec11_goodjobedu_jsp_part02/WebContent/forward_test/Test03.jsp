<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	Test03 페이지는 보일까? 
	<%
		request.setAttribute("user_tel", "010-1111-2222");
		RequestDispatcher rd = request.getRequestDispatcher("Test03_result.jsp");
		rd.forward(request, response);
	%>
</body>
</html>