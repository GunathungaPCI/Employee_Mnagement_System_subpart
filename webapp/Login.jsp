<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('images/login.jpg'); 
            background-size: cover;
            background-position: center;
            color: #333;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .container {
            max-width: 500px;
            padding: 40px;
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
            text-align: center;
        }

        h1 {
            margin-bottom: 20px;
            color: #336699;
        }

        h2 {
            margin-bottom: 20px;
        }

        form {
            margin-top: 20px;
        }

        label {
            display: block;
            margin-bottom: 10px;
            color: #333;
            font-weight: bold;
        }

        input[type="text"],
        input[type="password"] {
            width: calc(100% - 22px);
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            width: 100%;
            padding: 15px;
            margin-top: 10px;
            border: none;
            border-radius: 5px;
            background-color: #ff6600; 
            color: #fff;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #25465d;
        }
    </style>

</head>
<body>
     <div class="container">
        <h1>Employee Management System</h1>
        <h2>Enter Your details to Log in</h2>
        
        <%-- Check if an error occurred during login --%>
    <% if ("true".equals(request.getParameter("error"))) { %>
        <div style="color: red;">Your Employee ID or password is incorrect</div>
    <% } %> 
    
        <form action="LoginServlet" method="post">
            <label for="EmpID">Employee ID</label>
            <input type="text" id="EmpID" name="EmpID" placeholder="Enter your Employee ID">
            <br>
            
            <input type="submit" name="submit" value="Login">
        </form>
    </div>

     
</body>
</html>