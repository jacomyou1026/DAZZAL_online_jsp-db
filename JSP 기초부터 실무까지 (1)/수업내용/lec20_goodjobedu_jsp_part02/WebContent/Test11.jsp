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
	<%-- <c:catch> : try문 --%>
	<c:catch var = "exc">
		<c:set var = "result" value = "${param.decimal * 100}"/>
	</c:catch>
	
	<c:choose>
		<c:when test = "${exc == null}">
			${param.decimal} X 100 = ${result}
		</c:when>
		<c:otherwise>
			정수를 입력하세요.
		</c:otherwise>
	</c:choose>
</body>
</html>