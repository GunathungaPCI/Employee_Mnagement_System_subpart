<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Management System</title>
    <style>
        footer {
            background-color:#357EC7;
            color:black;
            padding: 10px;
            text-align: center;
        }
        
        .footer-container {
            display: inline-block;
            margin-right: 150px; 
            color:white;
           
        }
        
        .footer-container:last-child {
            margin-right: 0; 
        }
        
        .footer-container ul {
            list-style-type: none;
            padding: 10px;
            margin: 0;
        }
        
        .footer-container ul li {
            margin-bottom: 10px; 
          
        }
        
        footer p {
            margin-top: 10px;
            font-size: 14px;
        }
        .textc{
        
           color:white;
        }
        
        .footer-inner-img {
           height: 50px;
           width: 50px;
           padding: 5%;
        }
        
        .footer-inner-h4 {
           color: white;
           font-weight: bolder;
          
         }
         
         .footer-inner-h3 {
           color: white;
           font-weight: bolder;
           //margin-top:15px;
          
         }
         
         .footer-inner-div span a {
           color: #fff;
           text-decoration: none;
            font-size: 18px;
          
          
         }
         #faq:hover {
           background-color:white;
           color: black;
          
        }
        
        #faq {
          align-self: center;
          color: #fff;
          font-size: xx-large;
          font-weight: bolder;
          background-color: lightblue;
          opacity: 0.6;
          padding: 12px;
          border-radius: 15px;
         cursor: pointer;
         
         
       }
         
        
        
    </style>
</head>
<body>
   <footer>
       <div class="footer-container">
          <h4 class="footer-inner-h4">Contacts</h4>
           <ul>
               <li><a href="#" class="textc">email : support@otrainer.lk</a></li>
               <li><a href="#" class="textc">Tel : +94 11 256 5862</a></li>
               <li><a href="#" class="textc">Mob : +94 77 256 5862</a></li>
               <li><a href="#" class="textc">whatsapp : +94 77 256 5862</a></li>
           </ul>
       </div>
       
       <div class="footer-container">
       <h4 class="footer-inner-h4">Legal</h4>
           <ul>
               <li><a href="#" class="textc">Privacy Policy</a></li>
               <li><a href="#" class="textc">Terms & Conditions</a></li>
               <li><a href="#" class="textc">Refund Policy</a></li>
           </ul>
       </div>

       
       
       <div class="footer-container">
                <h4 class="footer-inner-h3">Social Media</h4>
                
                    <a href="#"><img src="images/x.webp" class="footer-inner-img"></a>
                    <a href="#"><img src="images/whats.png"  class="footer-inner-img"></a>
                    <a href="#"><img src="images/fb.webp"  class="footer-inner-img"></a>
                    <a href="#"><img src="images/insta.webp"  class="footer-inner-img"></a>
                
            </div>
            
            <div class="footer-container" id="faq">
                <span><a href="FAQ.jsp" >FAQ</a></span>
            </div>
                    
       <p>&copy; 2024 Employee Management System. All rights reserved.</p>
   </footer>
</body>
</html>