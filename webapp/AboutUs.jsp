<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Employee Management System</title>
    <style>
    body{
    
              height: 80vh;
              width: 100vw;
              background-image: url("images/2.jpg");
              background-size: cover;
        }
        container {
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        header {
            /* Your header styles */
        }

        nav {
            /* Your navigation styles */
        }

        main {
            flex: 1;
            padding: 20px;
        }

        footer {
            /* Your footer styles */
        }

        /* Additional styling for sections */
        section {
            margin-bottom: 20px;
        }
        .navigation{
          padding-left:600px;
          padding-top:10px;
          color:blue;
        
        }
        
        
        .left-container1, .right-container1{
            flex: 1; 
          
            padding:30px;
            box-sizing: 200px; 
            margin-right:50px;
           
            width:1000px;
          
        }
        
        .left-container2, .right-container2 {
            flex: 1; 
          
            padding:30px;
            box-sizing: 200px; 
            margin-right:50px;
           
            width:100px;
          
        }
        
        .container1,.container2 {
            display: flex;
            max-width: 1200px;
            max-height:200px;
            margin: 0 auto;
            padding: 30px;
           
             
            padding-top:0px;
            padding-right:120px;
          
 
        }
        
        .containercontact{
            padding-left:600px;
            padding-top:30px;
        }
    </style>
    
    
</head>
<body>
   
        <%@ include file="Header.jsp" %>
   

    <!-- Navigation -->
     <div class="navigation">
         <h1>About Us</h1>
    </div>

    <!-- Main Content -->
    <main>
        <div class="container1">
        <div class="left-container1">
        <section id="introduction">
            <h1>Introduction</h1>
             Our platform is your comprehensive solution for efficiently handling all aspects of employee administration.
              From seamlessly onboarding new hires to tracking attendance, managing performance, and handling payroll, 
              our intuitive interface simplifies HR tasks, empowering you to focus on what truly matters: nurturing a thriving workforce. 
              Streamline your processes, enhance productivity, and foster a positive work environment with our Online Employee Management system.
        </section>
        </div>
       <div class="right-container1"> 
        <section id="company-history">
            <h2>Company History</h2>
            Our company's journey in the realm of online employee management began with a vision to revolutionize HR practices. 
            Established in [year], we embarked on a mission to empower organizations with cutting-edge technology,
             streamlining their workforce management processes. Over the years, our commitment to innovation and customer 
             satisfaction has propelled us to become a trusted leader in the industry. Join us as we continue to shape the future of online employee management together.
        </section>
       </div>
       </div>
       <div class="container2">
       <div class="left-container2">
        <section id="our-team">
            <h2>Our Team</h2>
            Our team is driven by a passion for excellence and a dedication to customer satisfaction.
             We understand the challenges faced by HR professionals and business owners alike, and we are committed to providing unparalleled support every step of the way. Whether you're a small startup or a large enterprise, you can trust us to be your partner in success.

            Thank you for choosing [Company Name]. We look forward to serving you and helping you achieve your goals.

            Best Regards

        </section>
        </div>
        <div class="right-container2">
        <section id="our-culture">
            <h2>Our Culture</h2>
           At our Online Employee System, we pride ourselves on fostering a culture of inclusivity, 
           collaboration, and continuous growth. We believe that every team member plays a vital role in shaping our success, 
           and we are committed to providing an environment where everyone feels valued, respected, and empowered to thrive. 
           Our culture celebrates diversity, encourages open communication, and promotes a shared dedication to excellence. 
           
        </section>
      </div>
      </div>
      <div class="containercontact">
        <section id="contact">
            <h2>Contact Us</h2>
            
           <ul>
               <li><a href="#">email : support@otrainer.lk</a></li>
               <li><a href="#">Tel : +94 11 256 5862</a></li>
               <li><a href="#">Mob : +94 77 256 5862</a></li>
               <li><a href="#">whatsapp : +94 77 256 5862</a></li>
               
           </ul>
       
        </section>
        </div>
        
    </main>

    
        <%@ include file="Footer.jsp" %>
   
</body>
</html>