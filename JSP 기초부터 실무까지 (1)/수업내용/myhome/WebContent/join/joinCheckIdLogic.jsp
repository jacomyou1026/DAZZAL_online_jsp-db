<%@page import="com.myhome.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	
	MemberDao dao = new MemberDao();
	boolean result = dao.isExistId(id);
	response.sendRedirect("joinCheckIdView.jsp?id="+id + "&result="+result);
%>    