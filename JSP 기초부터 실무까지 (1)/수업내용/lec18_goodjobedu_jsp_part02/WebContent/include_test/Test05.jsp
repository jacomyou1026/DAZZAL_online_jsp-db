<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	Test05실행 <br>
	
	<% request.setCharacterEncoding("UTF-8"); %>
	<jsp:include page="Test01.jsp">
		<jsp:param name = "user_name" value="고길동" />
	</jsp:include>
	
</body>
</html>