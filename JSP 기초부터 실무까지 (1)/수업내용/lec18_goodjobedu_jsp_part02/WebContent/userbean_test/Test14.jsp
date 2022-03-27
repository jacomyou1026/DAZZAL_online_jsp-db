<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id = "p1" class = "com.bean.dto.PersonDto" scope = "page" />
		<jsp:setProperty name = "p1" property = "name" param = "user_name"/>
		<jsp:setProperty name = "p1" property = "age" param = "user_age"/>
	
	입력된 이름 : <jsp:getProperty name="p1" property="name" /> <br>
	입력된 나이 : <jsp:getProperty name="p1" property="age" /> <br>
</body>
</html>