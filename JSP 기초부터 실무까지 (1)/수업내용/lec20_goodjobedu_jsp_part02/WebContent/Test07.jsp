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
	<%-- <c:forEach> : for문 --%>
	<c:forEach var="lang" items="${paramValues.language }"> <%-- for(String s : language) --%>
		${lang }
	</c:forEach>
	
	<c:forEach var = "str" items = "피카츄,라이츄, 파이리, 꼬부기, 버터풀, 야도란">
		${str }
	</c:forEach>
</body>
</html>