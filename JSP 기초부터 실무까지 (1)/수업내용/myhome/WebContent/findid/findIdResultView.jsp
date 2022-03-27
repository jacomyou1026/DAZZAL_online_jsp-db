<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "/layout/header.jsp"%>
<%
	String id = (String)request.getAttribute("id");
	boolean check = id != null;
	String message = check ? "고객님의 ID는 다음과 같습니다.<br>"+id : "찾으시는 ID는 존재하지 않습니다.";
%>
<h4><%= message %></h4>
<br>
<input type = "button" value = "메인으로" onclick="location.href='/myhome/index.jsp'">
<input type = "button" value = "로그인 하러가기" onclick="location.href='/myhome/login/loginView.jsp'">

<%@ include file = "/layout/footer.jsp"%>