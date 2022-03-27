<%@page import="java.util.Set"%>
<%@page import="java.util.Map"%>
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
		// 모든 파라미터를 받는 메소드
		Map<String, String[]> map = request.getParameterMap();
		// < Key   ,  Value >
		// Key : 파라미터명
		// Value : 파라미터의 값(들)
		Set<String> pNames = map.keySet();
		String[] pValues = null;
		for(String p : pNames){
			pValues = map.get(p);
			out.write("파라미터 명 : " + p + "<br>");
			out.write("파라미터 값 : ");
			for(String val : pValues){
				out.write(val + " ");
			}
			out.write("<br>");
		}
	%>
</body>
</html>





