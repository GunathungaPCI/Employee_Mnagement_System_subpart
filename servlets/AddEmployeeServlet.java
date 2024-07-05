package com.emp;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/addemp")
public class AddEmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Name = request.getParameter("Name");
		String Gender = request.getParameter("Gender");
		String email = request.getParameter("email");
		String MobileNo = request.getParameter("MobileNo");
		
		String Address = request.getParameter("Address");
		String EmpId = request.getParameter("EmpId");
		String Location = request.getParameter("Location");
		String Department= request.getParameter("Department");
		String DateOfJoining = request.getParameter("DateOfJoining");
		String Salary = request.getParameter("Salary");
		Double salaryd = Double.parseDouble(Salary);
		
		System.out.println(Name + Gender + email + MobileNo + Address + EmpId + Location + Department + DateOfJoining + Salary);
		
		

		 try {
	            // Add employee to the database
	            EmployeeDBUtil.addEmployee(Name, Gender, email, MobileNo, Address, EmpId, Location, Department, DateOfJoining, salaryd);
	           
	            
	         // Display an alert message for success
	            String alertScript = "<script>alert('Employee added successfully!');window.location.href = 'Homepage.jsp';</script>";
	           // window.location.href = 'homepage.jsp';</script>";
	            response.setContentType("text/html");
	            response.getWriter().println(alertScript);
	            
	            
	        } catch (SQLException e) {
	        	 String alertScript = "<script>alert('Employee add Failed!');</script>";
	            e.printStackTrace();
	            //Redirect to an error page
               //response.sendRedirect("error.jsp");
	        }
	    }

}
