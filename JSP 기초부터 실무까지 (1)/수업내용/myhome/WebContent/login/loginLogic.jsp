<%@page import="com.myhome.dto.MemberDto"%>
<%@page import="com.myhome.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("user_id");
	String password = request.getParameter("user_password");
	
	MemberDao dao = new MemberDao();
	MemberDto dto = dao.select(id, password);
	
	if(dto != null){
		request.setAttribute("nickname", dto.getNickname());
	}
	pageContext.forward("loginResultView.jsp");
%>