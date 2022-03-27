<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id= "p2" class= "com.bean.dto.PersonDto" scope = "page"/>
	<jsp:useBean id= "p3" class= "com.bean.dto.PersonDto" scope = "session"/>
	
	<jsp:setProperty property="name" name="p2" value= "이푸린"/>
	<jsp:setProperty property="age" name="p2" value= "7"/>
	
	<jsp:setProperty property="name" name="p3" value= "최뚜벅초"/>
	<jsp:setProperty property="age" name="p3" value= "5"/>
	
	<a href="Test16.jsp">Test16으로 이동(리다이렉트)</a>
</body>
</html>