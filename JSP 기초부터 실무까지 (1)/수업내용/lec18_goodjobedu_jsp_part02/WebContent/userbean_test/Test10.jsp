<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id = "p1" class="com.bean.dto.PersonDto" scope="request" /> <%-- PersonDto p1 = (PersonDto)request.setAttribute("p1"); --%>
	<jsp:getProperty name = "p1" property="name"/>님은,  <%-- p1.getName() --%>
	<jsp:getProperty name = "p1" property="age" />살입니다. <%-- p1.getAge() --%>
</body>
</html>