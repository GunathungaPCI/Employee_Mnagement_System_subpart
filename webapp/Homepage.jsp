<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

   <style>
        body{
           background-image: url("images/white.jpeg");
            background-size: cover;
        }
        
        .jumbotron {
            //background-color: #f8f9fa;
            padding: 2rem 1rem;
            margin-top:-30px;
        }
        .btn-group-center {
            text-align: center;
            margin-top: 50px;
            display:inline-block;
            /*margin-right:700px;*/
        }
       .btn {
            margin: 10px;
            padding: 20px 50px;
            font-size: 20px;
            font-weight: bold;
            text-transform: uppercase;
            border: none;
            border-radius: 10px;
            /*margin-left:1000px;*/
            
        }
        .btn-primary {
            background-color: #007bff;
            color: #fff;
             
            
        }
        .btn-secondary {
            background-color: #6c757d;
            color: #fff;
        }
        .btn-success {
            background-color: #28a745;
            color: #fff;
        }
        .btn-danger {
            background-color: #dc3545;
            color: #fff;
        }
        .greeting {
            font-size: 24px;
        }
        
        .container{
        
           margin-bottom:10px;
           
        }
        
        .dropdown {
		    position: relative; /* Make sure the parent container is set to relative */
		}
        
        .dropdown-content {
            display: none;
		    position: absolute;
		    top: 100%; /* Position the dropdown relative to the bottom of the parent */
		    left: 0;
		    margin: 0 0 0 10px;
		    background-color: #f9f9f9;
		    width: 400px;
		    box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
		    z-index: 1;
       }
       
       .dropdown-content a{
       	text-decoration: none;
       	color: black;
       	padding: 10px 0;
       }
		      


      .dropdown-content a:hover {
          background-color: #f1f1f1;
       }


      .dropdown:hover .dropdown-content {
          display: block;
      }

      .btn-group-center {
          text-align: center; 
          
          
      }

      .btn-group-center a {
         display: block; 
         margin-bottom: 5px;
         text-decoration: none;
        
     }
     
      .image{
          margin-top:5px;
         
          margin-left:150px;
     }
     
     .Title{
     
        margin-left:350px;
        color:blue;
        margin-bottom:-50px;
        margin-top:-20px;
     }
     .left-cont, .right-cont{
            flex: 1; 
          
            padding:30px;
            box-sizing:400px; 
            margin-right:50px;
           
            width:50%;
          
        }
        
        
         section {
            margin-bottom: 10px;
           
            margin-left:50px;
            margin-right:200px;
        }
        
        .new-in-img{
           width:600px;
           height:auto;
         }
         
         .top {
         	display: flex;
         }
    </style>
</head>
<body>

   
      <%@ include file="Header.jsp" %>

<div class="container">
    <div class="jumbotron">
        <h3 class="display-4 greeting">Hello, Miss/Sir!!</h3>
       
        <h1 class="Title">
           Online Employee Management System
        
        </h1>
        
    </div>
    <div class="top">
    <div class="left-cont">
    
	    <div class="para">
	    
		    <section > 
		    	<h3>Welcome to our Online Employee Management System!</h3>
		       
		                Our platform is designed to streamline your organization's HR processes, 
		                making it easier than ever to manage your workforce efficiently and effectively. 
		                From hiring and onboarding new employees to tracking time and attendance, 
		                our system offers a comprehensive solution to meet your HR needs.
		                
		    </section>
	    </div>    
          
	    <div class="image">
	        <a href="#"><img src="images/images.jpeg" class="new-in-img" ></a>
	    </div>
	    
	</div>
    <div class="">
    <div class="btn-group-center">

       <div class="dropdown">
         <a href="#" class="btn btn-primary"> Account Management</a>
                    <div class="dropdown-content">
                        <a href="AddEmployee.jsp">New Employee</a>
                        <a href="ManageEmployee.jsp">Current Employee</a>
                       
                    </div></div>

       
      
        <a href="#" class="btn btn-secondary">Leave Management</a>
        <a href="#" class="btn btn-success">Task Assignment</a>
        <a href="#" class="btn btn-danger">Payroll Management</a>
    </div>
    </div>
    
    
</div>
</div>
   
   
  <%@ include file="Footer.jsp" %>

</body>
</html>