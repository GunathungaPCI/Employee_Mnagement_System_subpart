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
         .new-in-img{
           height: 200px;
           width: 200px;
           margin: 0 2px;
           margin-left:600px;
           margin-top:20px;
        }
       
  
      
         .topic{
           margin-left:450px;
         
         }
        
        .mybutton{
        
           margin-left:650px;
           margin-top:60px;
           margin-bottom:60px;
           
            
        }
        .but{
          padding:10px;
          border-radius:5px;
           background-color:#357EC7;
        }
        
         .but:hover {
              background-color: white;
        }
        section {
            margin-bottom: 10px;
           
            margin-left:50px;
            margin-right:200px;
        }
        .h5{
          margin-left:50px;
          color:red;
        }
        .highlight {
            color: black;
           
        }
        
    </style> 
</head>
<body>
    <%@ include file="Header.jsp" %>
    
          <div class="topic">
          <h1>Current Employee Details</h1>
          </div>
          
          <div class="para">
          <section>
          <h3> Welcome to our View Employee section.  </h3>
             
               You can effortlessly access and manage all employee records within your organization.
               Gain valuable insights into your workforce, including personal details, employment history, and performance metrics.
               Streamline your HR processes and make informed decisions to optimize your team's productivity and engagement. 
               Explore our intuitive interface to discover the power of effective employee management today."</section>
          
          <h5 class="h5">If you want to view employee's detals,Update employee's details and delete employee,please click the <span class="highlight">"View Employee"</span>  button</h5>
          
          </div>
    
          <a href="#"><img src="images/viewemp.jpeg"  class="new-in-img"></a>
                
        
         <form action="viewemp" method="get">
           
                <div class="mybutton">
                <button class="but" name="submit" >View Employee</button>
                </div>
         </form>
      
       
       

    <%@ include file="Footer.jsp" %>
</body>
</html>