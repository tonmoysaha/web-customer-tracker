package com.webcustomertracker.spring.testdb;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TestDBServlet
 */
@WebServlet("/TestDBServlet")
public class TestDBServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uName = "webcustomer";
		//cd E:/bookstore/web-customer-tracker
		String password = "webcustomer";
				
		String URL = "jdbc:mysql://localhost:3306/web_customer_tracker?useSSL=false";
		String driver = "com.mysql.jdbc.Driver";
		
		
		try {
			Class.forName(driver);
			PrintWriter out = response.getWriter();
			out.println("connecting to jdbc: "+ URL);
			Connection myConnection = DriverManager.getConnection(URL, uName, password);
			out.println("connection successfully");
			myConnection.close();
			
			
		} catch (Exception e) {
			e.printStackTrace();
			throw new ServletException(e);
		}
	}

}
