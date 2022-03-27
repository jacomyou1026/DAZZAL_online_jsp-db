<%@page import="java.util.HashMap"%>
<%@page import="java.util.Enumeration"%>
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
	request.setCharacterEncoding("UTF-8");
	String method 		= request.getMethod();
	String uri 			= request.getRequestURI();
	StringBuffer url 	= request.getRequestURL();
	String host 		= request.getRemoteHost();
	String address 		= request.getRemoteAddr();
	String user 		= request.getRemoteUser();
	String protocol 	= request.getProtocol();
	String serverName 	= request.getServerName();
	int serverPort 		= request.getServerPort();
	Enumeration<String> headerNames = request.getHeaderNames();
	// 기타 :
	// String 	getParameter(String name) 
	// String[] getParameterValues(String name)
	// Enumeration<String> getParameterNames()
%>
요청 방식 : <%= method %> <br>
request 받은 페이지의 파일 경로 : <%= uri %> <br>
request 받은 페이지의 주소 : <%= url %> <br>
클라이언트 호스트 이름 : <%= host %> <br>
클라이언트 호스트 주소 : <%= address %> <br>
클라이언트 호스트 ID : <%= user %> (인증 사용을 안한 경우 null)<br>
사용 중인 프로토콜 : <%= protocol %> (보통은 http)<br>
서버의 도메인 이름 : <%= serverName %> <br>
서버의 포트 번호 : <%= serverPort %> <br>
입력받은 텍스트1 : <%= request.getParameter("val1") %> <br>
입력받은 텍스트2 : <%= request.getParameter("val2") %> <br>
=====request 메시지의 header===== <br>
<%while(headerNames.hasMoreElements()){
	String headerName = headerNames.nextElement();
	String headerValue = request.getHeader(headerName);%>
	<%=headerName %> : <%= headerValue %> <br>
<%} %>
</body>
</html>





