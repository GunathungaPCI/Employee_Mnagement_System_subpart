package com.emp;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class EmployeeDBUtil {
	private static boolean isSuccess;
    private static final String URL = "jdbc:mysql://localhost:3306/empmangesystem";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "12345";

    public static Connection getConnection() throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            // Handle or log the exception appropriately
            e.printStackTrace();
            throw new SQLException("MySQL JDBC Driver not found", e);
        }
        return DriverManager.getConnection(URL, USERNAME, PASSWORD);
    }
    
    
    //Add employee
    
    
    public static void addEmployee(String name, String gender, String email, String mobileNo, String address,
            String empId, String location, String department, String dateOfJoining, Double Salary) throws SQLException {
        String sql = "INSERT INTO employeetable (Name, Gender, email, MobileNo, Address, EmpID, Location, Department, DateOfjoining, Salary) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        try (Connection conn = getConnection();
             PreparedStatement statement = conn.prepareStatement(sql)) {
            statement.setString(1, name);
            statement.setString(2, gender);
            statement.setString(3, email);
            statement.setString(4, mobileNo);
            statement.setString(5, address);
            statement.setString(6, empId);
            statement.setString(7, location);
            statement.setString(8, department);
            statement.setString(9, dateOfJoining);
            statement.setDouble(10, Salary);

            statement.executeUpdate();
        }
    }
    
    //viewEmployee
    
    public static List<Employee> getAllEmployees() throws SQLException {
        List<Employee> employees = new ArrayList<>();
        String sql = "SELECT * FROM employeetable";
        try (Connection conn = getConnection();
             PreparedStatement statement = conn.prepareStatement(sql);
             ResultSet resultSet = statement.executeQuery()) {
        	System.out.println("check");
            while (resultSet.next()) {
                
                String Name=resultSet.getString("Name");
                String Gender=resultSet.getString("Gender");
                String email=resultSet.getString("email");
                int  MobileNo=resultSet.getInt("MobileNo");
                String Address=resultSet.getString("Address");
                String empID = resultSet.getString("EmpID");
                String Location=resultSet.getString("Location");
                String department=resultSet.getString("department");
                String DateOfJoining=resultSet.getString("DateOfJoining");
                Double  Salary=resultSet.getDouble("Salary");
                System.out.println(Name + Gender + email + MobileNo + Address + empID + Location + department + DateOfJoining + Salary);
                
                
                Employee employee = new Employee(Name,Gender,email,MobileNo,Address,empID,Location,department,DateOfJoining,Salary);
                // Set other employee attributes
                employees.add(employee);
            }
        }
        return employees;
    }
    
    public static List<Employee> getAllEmployeesupdate(String empid) throws SQLException {
        List<Employee> employees = new ArrayList<>();
        String sql = "SELECT * FROM employeetable WHERE EmpId=?";
        try (Connection conn = getConnection();
             PreparedStatement statement = conn.prepareStatement(sql)) {
            
            // Set the parameter for the employee ID
            statement.setString(1, empid);
            
            try (ResultSet resultSet = statement.executeQuery()) {

                System.out.println("checknotfound");
                while (resultSet.next()) {
                    String Name = resultSet.getString("Name");
                    String Gender = resultSet.getString("Gender");
                    String email = resultSet.getString("email");
                    int MobileNo = resultSet.getInt("MobileNo");
                    String Address = resultSet.getString("Address");
                    String empID = resultSet.getString("EmpID");
                    String Location = resultSet.getString("Location");
                    String department = resultSet.getString("department");
                    String DateOfJoining = resultSet.getString("DateOfJoining");
                    Double Salary = resultSet.getDouble("Salary");

                    System.out.println("checknotfound");
                    System.out.println(Name + Gender + email + MobileNo + Address + empID + Location + department + DateOfJoining + Salary);

                    // Create Employee object and add it to the list
                    Employee employee = new Employee(Name, Gender, email, MobileNo, Address, empID, Location, department, DateOfJoining, Salary);
                    employees.add(employee);
                }
            }
        }
        return employees;
    }

    
    //UpdateEmployee

    public static void UpdateEmployee(Employee employee) throws SQLException {
        String sql = "UPDATE employeetable SET Name=?, Gender=?, email=?, MobileNo=?, Address=?, Location=?, Department=?, DateOfJoining=?, Salary=? WHERE EmpId=?";
        try (Connection conn = getConnection();
             PreparedStatement statement = conn.prepareStatement(sql)) {
        	statement.setString(1, employee.getName());
            statement.setString(2, employee.getGender());
            statement.setString(3, employee.getEmail());
            statement.setInt(4, employee.getMobileNo());
            statement.setString(5, employee.getAddress());
            statement.setString(6, employee.getLocation());
            statement.setString(7, employee.getDepartment());
            statement.setString(8, employee.getDateOfJoining());
            statement.setDouble(9, employee.getSalary());
            statement.setString(10, employee.getEmpId());

            
            
            statement.executeUpdate();
        }
    }
   
    
    
    //DeleteEmployee
    
    
    public static void DeleteEmployee(String empId) throws SQLException {
        String sql = "DELETE FROM employeetable WHERE EmpId=?";
        try (Connection conn = getConnection();
             PreparedStatement statement = conn.prepareStatement(sql)) {
            statement.setString(1,empId);
            statement.executeUpdate();
        }
    }
    
    
    
    
    //login
    
    
    
    
    
    public static boolean validateLogin(String EmpID,String pass) {
		
    	    
    	String sql = "SELECT * FROM employeetable WHERE EmpID ='"+EmpID+"'";
    	System.out.println(EmpID);
    		try (Connection conn = getConnection();
    			PreparedStatement statement = conn.prepareStatement(sql)){
    				 // Set the parameter for the employee ID
    				// statement.setString(1, EmpID);
    			
    			try(ResultSet resultset = statement.executeQuery()){
    	            
    	       
       			
      			 if(resultset.next()){
      				   isSuccess = true;
      			   }else {
      				   isSuccess =false;
      			   }
    			
    			}
    		}
    		catch(Exception e){
    			e.printStackTrace();
    		}
    		
    		return isSuccess;
    	}
        
        public static List<Employee> getLogin(String EmpID){
        	
        	ArrayList<Employee>employees = new ArrayList<>();
        	
        	String sql = "SELECT * FROM employeetable WHERE EmpID='"+EmpID+"'";
        	
        	try (Connection conn = getConnection();
        	    PreparedStatement statement = conn.prepareStatement(sql)) {
        		
        		statement.setString(1, EmpID);
    			
    			try(ResultSet resultset = statement.executeQuery()){
    			
    			while(resultset.next()) {
    			    
    				String Name = resultset.getString(1);
                    String Gender = resultset.getString(2);
                    String email = resultset.getString(3);
                    int MobileNo = resultset.getInt(4);
                    String Address = resultset.getString(5);
                    String empID = resultset.getString(6);
                    String Location = resultset.getString(7);
                    String department = resultset.getString(8);
                    String DateOfJoining = resultset.getString(9);
                    Double Salary = resultset.getDouble(10);
    				
    				Employee employee = new Employee (Name, Gender, email, MobileNo, Address, empID, Location, department, DateOfJoining, Salary);
    				employees.add(employee);
    			}
        	 }
        	}
        	catch(Exception e){
        		
        	}
        		
        	
        	
        	return employees;
        	
        }


}
