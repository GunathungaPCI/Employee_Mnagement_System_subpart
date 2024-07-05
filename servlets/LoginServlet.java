package com.emp;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String EmpId = request.getParameter("EmpID");
		String pass = request.getParameter("pass");
		
		boolean isTrue;
		
		isTrue = EmployeeDBUtil.validateLogin(EmpId,pass);
		
		if(isTrue == true) {
			
			List<Employee> employees = EmployeeDBUtil.getLogin(EmpId);
			request.setAttribute("Employees",employees);
			
			RequestDispatcher dis = request.getRequestDispatcher("Homepage.jsp");
			dis.forward(request, response);
		}
		else {
			response.sendRedirect("Login.jsp?error=true");
		}
	}

}

