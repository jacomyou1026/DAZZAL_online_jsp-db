package com.myservlet;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Test02
 */

public class Test02 extends HttpServlet {
	
	public void init(ServletConfig config) throws ServletException {
		System.out.println("Test02ÀÇ init() ½ÇÇàµÊ");
	}

	
	public void destroy() {
		System.out.println("Test02ÀÇ destroy() ½ÇÇàµÊ");
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().write("Hello, This is Test02!");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
