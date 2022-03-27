<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	리다이렉트된 페이지!
	response의 컨텐트타입 : <%= response.getContentType() %> <br>
	response의 버퍼 크기(byte) : <%= response.getBufferSize() %><br>
	response의 인코딩 형식 : <%= response.getCharacterEncoding() %> <br>
	<%= response.getHeader("content-type") %> <br>
	<%= response.getStatus() %> <br>
</body>
</html>