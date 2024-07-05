package com.emp;

import java.io.IOException;
import java.util.List;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;


@WebServlet("/viewemp")
public class ViewEmployeeServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
    	
    	String EmpId = request.getParameter("EmpId");
    	
        try {
            // Retrieve list of employees from the database
            List<Employee> employees = EmployeeDBUtil.getAllEmployees();
            
            for (Employee emp : employees) {
                System.out.println("Name: " + emp.getName());
                System.out.println("Gender: " + emp.getGender());
                System.out.println("Email: " + emp.getEmail());
                System.out.println("Mobile No: " + emp.getMobileNo());
                System.out.println("Address: " + emp.getAddress());
                System.out.println("EmpId: " + emp.getEmpId());
                System.out.println("Location: " + emp.getLocation());
                System.out.println("Department: " + emp.getDepartment());
                System.out.println("Date Of Joining: " + emp.getDateOfJoining());
                System.out.println("Salary: " + emp.getSalary());
                System.out.println("-----------------------");
            }
            
            // Set employees list as request attribute
            request.setAttribute("Employees", employees);
            
            // Forward the request to the JSP page to display employees
            RequestDispatcher dispatcher = request.getRequestDispatcher("ViewEmployee.jsp");
            
            dispatcher.forward(request, response);
        } catch (SQLException e) {
            // Handle database errors
            e.printStackTrace();
            response.getWriter().println("Cannot view employee" + e.getMessage());
        }
    }
}
