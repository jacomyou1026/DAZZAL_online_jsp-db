<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:useBean id="p1" class="com.bean.dto.PersonDto" scope="request"> <%-- request.setAttribute("p1",new PersonDto());--%>
	</jsp:useBean>
	<jsp:setProperty name="p1" property="name" value = "김피카츄" /> <%-- p1.setName("김피카츄"); --%>
	<jsp:setProperty name="p1" property="age" value = "10" />      <%-- p1.setAge(10); --%>
	<jsp:forward page="Test10.jsp" />
</body>
</html>