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
	<%-- <c:set> : 변수 설정 (변수는 기본적으로 page 영역의 속성으로 저장됨) --%>
	
	<%-- 방법 1 --%>
	<c:set var = "num1" value = "1"/>
	
	<%-- 방법2 --%>
	<c:set var = "num2">2</c:set>
	
	<%-- 방법3 (EL 활용) --%>
	<c:set var = "num3" value = "${3 }"/>
	
	<%-- 방법 4 (scope 지정) --%>
	<c:set var = "num4" value = "4" scope="request" />
	num1 : ${num1 } <br>
	num2 : ${num2 } <br>
	num3 : ${num3 } <br>
	num4 : ${num4 } <br>
	
</body>
</html>