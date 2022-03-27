<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 파라미터를 꺼내서 그것들을
	// => DB의 member 테이블의 레코드로 추가 (회원 등록)
	// => 결과페이지(joinResultView.jsp)로 페이지 이동 
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("user_id");
	String password = request.getParameter("user_password");
	String email = request.getParameter("user_email1") + "@" + request.getParameter("user_email2");
	String nickname = request.getParameter("user_nickname");
	
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String userName = "myJsp";
	String userPassword = "jsppassword";
	String sql = "INSERT INTO member VALUES(member_seq.NEXTVAL, ?, ?, ?, ?, SYSDATE)";
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection(url, userName, userPassword);
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, id);
	ps.setString(2, password);
	ps.setString(3, email);
	ps.setString(4, nickname);
	boolean result = ps.executeUpdate() == 1;
	response.sendRedirect("joinResultView.jsp?result="+result);
%>
