<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int n1 = (int)(Math.random() * 8) + 2; // 2 ~ 9 
		int n2 = (int)(Math.random() * 9) + 1; // 1 ~ 9
		int realDab = n1 * n2;
	%>
	<form action = "gugudan_result.jsp" method = "get">
		<%= n1 %> X <%= n2 %> = <input type = "number" name = "userDab">
	<input type = "hidden" name = "realDab" value = "<%= realDab %>">
	<input type = "submit" value = "결과보기!">
	</form>
</body>
</html>