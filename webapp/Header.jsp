<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Header</title>
    <style>
         body {
           margin: 0;
           font-family: Arial, sans-serif;
       }

        header {
          background-color:#357EC7;
          color: black;
          padding: 10px 0;
       }
       
       nav {
       	display: flex;
       	position: relative;
       }
       
       nav a button {
       		position: absolute;
		    right: 0;
		    width: 100px;
		    height: 50px;
		    font-size: 20px;
		    font-weight: bold;
		    margin: 0 20px 0 0;
		    border: 2px solid #fff; 
		    background-color: transparent;
		    color: #fff; 
		    border-radius: 5px; 
		    cursor: pointer; 
		    transition: background-color 0.3s, color 0.3s;
       }
       
       nav a button:hover {
       		background-color: #fff; 
    		color: #333; 
       }

       nav ul {
         list-style-type: none;
         padding: 0;
         margin: 0;
       }

      nav ul li {
        display: inline;
      }

      nav ul li a {
        text-decoration: none;
        color: #fff;
        padding: 10px 90px;
        display: inline-block;
     }

     nav ul li a:hover {
        background-color: #555;
     }
     
     .dropdown{
        position: relative;
        display: inline-block;
        
     }
     
     .dropbtn {
       font-size: 16px;
       border: none;
       outline: none;
       color: white;
       background-color: inherit; /* Match the background color of the menu */
       padding: 14px 16px;
       text-decoration: none;
       display: block;
       border-radius:15px;
    
    }
    .dropbtn:hover{
       background-color:white;
       color:black;
    }


    .dropdown-content {
    display: none;
    top:100%;
    left:0;
    position: absolute;
    background-color: white; /* Background color of the dropdown */
    min-width: 160px;
    box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
    z-index: 1;
    border-radius:15px;
   }


   .dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    
   }


  .dropdown-content a:hover {
    background-color: lightgray;
   
  }


  .dropdown:hover .dropdown-content {
    display: block;
  } 

  .buttonconer{
   border-radius:15px;

  }

  .buttonconer:hover{
   background-color:white;
   color:black;
  }
    </style>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <header>
        <nav>
            <ul class="menu">
                <li><a href="Homepage.jsp" class= "buttonconer">Home</a></li>
                <li class="dropdown">
                    <a href="#" class="dropbtn" class= "buttonconer" >Employee</a>
                    <div class="dropdown-content">
                        <a href="AddEmployee.jsp">New Employee</a>
                        <a href="ManageEmployee.jsp">Current Employee</a>
                       
                    </div>
                </li>
                <li><a href="#" class= "buttonconer">Leave</a></li>
                <li><a href="#" class= "buttonconer">Task Management</a></li>
                <li><a href="#" class= "buttonconer">Payroll</a></li>
                <li><a href="AboutUs.jsp" class= "buttonconer">About</a></li>
                
                
            </ul>
            
            <a href="#"><button>Logout</button></a>
        </nav>
    </header>
</body>
</html>