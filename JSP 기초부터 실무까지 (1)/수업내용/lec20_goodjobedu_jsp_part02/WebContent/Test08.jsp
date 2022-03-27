<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach var = "i" begin = "1" end = "9" step = "1"> <%-- for(int i = 1; i<=9; ++i) --%>
		5 X ${i } = ${5*i } <br>
	</c:forEach>
	
<%-- 	<c:forEach var = "j" begin = "10"end = "1" step = "-1"> --%>
<%-- 		${j } --%>
<%-- 	</c:forEach>  --%>
</body>
</html>