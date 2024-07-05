package com.emp;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/updateemp")
public class UpdateEmployeeServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
    	
    	
        
        String Name = request.getParameter("Name");
		String Gender = request.getParameter("Gender");
		String email = request.getParameter("email");
		String MobileNo = request.getParameter("MobileNo");
		int mobile = Integer.parseInt(MobileNo);
		String Address = request.getParameter("Address");
		String EmpId = request.getParameter("EmpID");
		String Location = request.getParameter("Location");
		String Department= request.getParameter("Department");
		String DateOfJoining = request.getParameter("DateOfJoining");
		String Salary = request.getParameter("Salary");
		Double salaryd = Double.parseDouble(Salary);
        // Retrieve other updated employee details from form fields
        
        try {
        	
        	Employee emp = new Employee(Name, Gender, email, mobile, Address, EmpId, Location, Department, DateOfJoining, salaryd);
            // Update employee in the database
            EmployeeDBUtil.UpdateEmployee(emp);
            
            // Display success message
            String alertScript = "<script>alert('Update successfully!');window.location.href = 'viewemp';</script>";
            response.setContentType("text/html");
            response.getWriter().println(alertScript);

        } catch (SQLException e) {
            // Handle database errors
            e.printStackTrace();
            response.getWriter().println("Error updating employee: " + e.getMessage());
        }
    }
}
