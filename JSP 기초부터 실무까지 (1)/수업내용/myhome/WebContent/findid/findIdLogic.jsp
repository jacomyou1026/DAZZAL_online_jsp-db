<%@page import="com.myhome.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String email = request.getParameter("user_email");
	MemberDao dao = new MemberDao();
	String id = dao.findIdbyEmail(email);
	
	if(id != null){
		int index = id.length() - 2;
		String tmpId = id.substring(0, 2); // 0번문자 ~ 2번 전까지
		
		for(int i = 0; i < index; ++i){
			tmpId += "*";
		}
		id = tmpId;
		request.setAttribute("id", id);
	}
	pageContext.forward("findIdResultView.jsp");
%>