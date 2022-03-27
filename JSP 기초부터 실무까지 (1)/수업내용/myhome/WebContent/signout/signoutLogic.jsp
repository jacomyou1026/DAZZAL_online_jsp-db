<%@page import="com.myhome.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("user_id");
	String password = request.getParameter("user_password");
	
	MemberDao dao = new MemberDao();
	boolean result = dao.delete(id, password);
	
	request.setAttribute("result", result);
	pageContext.forward("signoutResultView.jsp");
%>