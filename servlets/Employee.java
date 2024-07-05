package com.emp;

public class Employee {

	
    private String Name;
    private String Gender;
    private String email;
    private int MobileNo;
    private String Address;
    private String EmpId;
    private String Location;
    private String department;
    private String DateOfJoining;
    private Double Salary;

    // Constructors
    public Employee() {
    }

    

    public Employee(String name, String gender, String email, int mobileNo, String address, String empId, String location,
			String department, String dateOfJoining, Double Salary) {
		super();
		this.Name = name;
		this.Gender = gender;
		this.email = email;
		this.MobileNo = mobileNo;
		this.Address = address;
		this.EmpId = empId;
		this.Location = location;
		this.department = department;
		this.DateOfJoining = dateOfJoining;
		this.Salary = Salary;
	}

    
    
    public String getName() {
		return this.Name;
	}



	public void setName(String name) {
		this.Name = name;
	}



	public String getGender() {
		return this.Gender;
	}



	public void setGender(String gender) {
		this.Gender = gender;
	}



	public String getEmail() {
		return this.email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public int getMobileNo() {
		return this.MobileNo;
	}



	public void setMobileNo(int mobileNo) {
		this.MobileNo = mobileNo;
	}



	public String getAddress() {
		return this.Address;
	}



	public void setAddress(String address) {
		this.Address = address;
	}



	public String getEmpId() {
		return this.EmpId;
	}



	public void setEmpId(String empId) {
		this.EmpId = empId;
	}



	public String getLocation() {
		return this.Location;
	}



	public void setLocation(String location) {
		this.Location = location;
	}



	public String getDepartment() {
		return this.department;
	}



	public void setDepartment(String department) {
		this.department = department;
	}



	public String getDateOfJoining() {
		return this.DateOfJoining;
	}



	public void setDateOfJoining(String dateOfJoining) {
		this.DateOfJoining = dateOfJoining;
	}



	public Double getSalary() {
		return this.Salary;
	}



	public void setSalary(Double Salary) {
		this.Salary = Salary;
	}


	
}


