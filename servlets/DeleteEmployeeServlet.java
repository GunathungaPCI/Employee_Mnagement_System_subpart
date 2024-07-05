package com.emp;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



	@WebServlet("/deleteemp")
	public class DeleteEmployeeServlet extends HttpServlet {
	    private static final long serialVersionUID = 1L;

	    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
	            throws ServletException, IOException {
	      
	        String 	EmpID = request.getParameter("id");
	        
			
	        try {
	            // Delete employee from the database
	            EmployeeDBUtil.DeleteEmployee(EmpID);
	            
	            // Display success message
	            String alertScript = "<script>alert(' Remove successfully!');window.location.href = 'viewemp';</script>";
	           
	            response.setContentType("text/html");
	            response.getWriter().println(alertScript);
	          

	        } catch (SQLException e) {
	            // Handle database errors
	            e.printStackTrace();
	            response.getWriter().println("Error deleting employee: " + e.getMessage());
	        }
	    }
	}
