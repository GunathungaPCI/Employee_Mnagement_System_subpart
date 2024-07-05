<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    
    <title>Add Employee</title>
    <style>
        
           
        .form-container {
            display: flex;
            max-width: 600px;
            max-height:450px;
            margin: 0 auto;
            padding: 60px;
            border: 1px solid #ccc;
            border-radius: 30px;
            background-color:rgba(255, 255, 255, 0.6);
            padding-top:0px;
            padding-right:140px;
          
            
         
        }
        
        .left-container, .right-container {
            flex: 1; 
            padding:50px;
            box-sizing: 200px; 
            margin-right:100px;
            margin-top:-12px;
            width:400px;
          
        }
        .left-container{
            margin-left:-10px;
        }
        
        
        
        .btn {
            background-color:#357EC7;
            color: black;
            font-weight: bold;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            align-items: center; 
        }
        
        .form-container input[type="text"],
        .form-container input[type="email"],
        .form-container input[type="tel"],
         .form-container input[type="number"],
        .form-container input[type="date"] {
               width: 200%;
               padding: 10px;
               margin-bottom: 10px;
               border: 1px solid #ccc;
               border-radius: 5px;
               background-color:lightgray;
        }
        
        .topic {
              font-size: 20px;
              text-align: center;
              align: center; 
              color:black;
             
              
        }
        
        
        .form-container h2 {
              font-size: 24px;
              margin-bottom: 20px;
        }
        
        .form-container h3 {
              font-size: 24px;
              margin-bottom: 20px;
        }
        
        body{
    
              height: 80vh;
              width: 100vw;
              background-image: url("images/2.jpg");
              background-size: cover;
        }
        
        .btn:hover {
              background-color: white;
        }
        
        .btncont{
              padding-top:10px;
              align-item:center;
              padding-left:690px;
              padding-bottom:50px;
        }
        
        
        
    </style>
</head>

<body>
     <%@ include file="Header.jsp" %>
    <div class="topic">
         <h1>Add Employee</h1>
    </div>
    
    <form action="addemp" method="post">
    <div class="form-container">
        <div class="left-container">
        <h2>Basic Information</h2>
        
        
        <label for="Name">Name:</label><br>
        <input type="text" id="Name" name="Name" required><br>
        
        <label>Gender:</label><br>
        <input type="radio" id="male" name="Gender" value="male" required>
        <label for="male">Male</label><br>
        <input type="radio" id="female" name="Gender" value="female" required>
        <label for="female">Female</label><br><br>
        
        <label for="email">Email:</label><br>
        <input type="email" id="email" name="email" required><br>
        
        <label for="MobileNo">Mobile No:</label><br>
        <input type="tel" id="MobileNo" name="MobileNo"  required><br>
        
        <label for="Address">Address:</label><br>
        <input type="text" id="Address" name="Address" required><br>
       </div>
       <div class="left-container">
        <h3>Work Information</h3>
        
        
        <label for="EmpId">EmpID:</label><br>
        <input type="text" id="EmpId" name="EmpId" required><br>
        
        <label for="Location">Work Location:</label><br>
        <input type="text" id="Location" name="Location" required><br>
        
        <label for="Department">Department:</label><br>
        <input type="text" id="Department" name="Department" required><br>
        
        <label for="DateOfJoining">Date Of Joining:</label><br>
        <input type="date" id="DateOfJoining" name="DateOfJoining" required><br>
        
         
        <label for="Salary">Salary (in rupees):</label><br>
        <input type="number" id="Salary" name="Salary" placeholder="Enter salary in rupees" required><br>
        
        </div>
      
     </div>   
     <div class="btncont">
                <input type="submit" name="submit" value="Add Employee" class="btn">
    </div>
     
    </form>
    
   <%@ include file="Footer.jsp" %>
    </body>
</html>
