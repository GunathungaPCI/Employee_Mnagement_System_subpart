
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Employees</title>
    <style>
    
         body{
           background-image: url("images/white.jpeg");
            background-size: cover;
         
         }
        .update-button{
           background:#f94449;
           color:black;
           padding:5px;
           margin-left:10px;
           border-radius:5px;
           text-decoration: none;
        }
        
        .delete-button{
            background:#48BBDB;
            padding:5px;
            color:black;
            margin-left:-20px;
            border-radius:5px; 
            text-decoration: none;
        }
        
         .delete-button:hover {
              background-color: gray;
        }
        
        
         .update-button:hover {
              background-color: gray;
        }
        
        table {
	        width: 100%;
	        border-collapse: collapse;
	        margin-top:40px;
	        margin-bottom:300px;
	        margin-left:10px;
	        
	       
        }

        th, td {
	       padding: 8px;
	       text-align: left;
	       border-bottom: 1px solid #ddd;
	       
        }

        tr:hover {
	       background-color: #f5f5f5;
        }

       th {
	      background-color: #f2f2f2;
	      color: #333;
	      
       }
        
        
        
    </style> 
</head>
<body>
    <%@ include file="Header.jsp" %>

    
       
        
        <table>
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Gender</th>
                    <th>email</th>
                    <th>MobileNo</th>
                    <th>Address</th>
                    <th>EmpID</th>
                    <th>Work Location</th>
                    <th>Department</th>
                    <th>DateOfJoining</th>
                    <th>Salary</th>
                </tr> 
            </thead>
            <tbody>
               
               
<c:forEach var="emp" items="${Employees}">
    <tr>
        <td>${emp.name}</td>
        <td>${emp.gender}</td>
        <td>${emp.email}</td>
        <td>${emp.mobileNo}</td>
        <td>${emp.address}</td>
        <td>${emp.empId}</td>
        <td>${emp.location}</td>
        <td>${emp.department}</td>
        <td>${emp.dateOfJoining}</td>
        <td>${emp.salary}</td>
        
        <td>
        	<a class="update-button"  href="updateview?id=${emp.empId}">
			    Update
			</a>
		</td>
		
		<td>
            <a class="delete-button"  href="deleteemp?id=${emp.empId}">
			    Delete
			</a>
        </td>
    </tr>
</c:forEach>



            </tbody>
        </table>
  

    <%@ include file="Footer.jsp" %>
</body>
</html>