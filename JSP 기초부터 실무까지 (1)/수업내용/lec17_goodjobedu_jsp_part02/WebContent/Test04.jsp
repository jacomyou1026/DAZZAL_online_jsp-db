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
		session.invalidate();// 클-서간의 세션을 종료
		session = request.getSession(); // 세션 다시 시작
		String s1 = (String)pageContext.getAttribute("tmp"); 
		String s2 = (String)request.getAttribute("tmp");
		String s3 = (String)session.getAttribute("tmp");
		String s4 = (String)application.getAttribute("tmp");
	%>
	Test04 도착!(세션 재시작) <br>
	page : <%=s1 %> <br>
	request : <%=s2 %> <br>
	session : <%=s3 %> <br>
	application : <%=s4 %> <br>
	
</body>
</html>