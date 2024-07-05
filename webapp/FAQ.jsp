<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FAQ - Employee Management System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('images/login.jpg'); 
            background-size: cover;
            background-position: center;
            color: #333;
        }

        header {
            background-color: #336699;
            color: #fff;
            padding: 20px;
        }

        header h1 {
            margin: 0;
        }

        nav ul {
            list-style-type: none;
            padding: 0;
        }

        nav ul li {
            display: inline;
            margin-right: 20px;
        }

        nav ul li a {
            color: #fff;
            text-decoration: none;
        }

        nav ul li a.active {
            font-weight: bold;
        }

        main {
            padding: 20px;
        }

        .faq-section {
            margin-bottom: 40px;
            background-color: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
        }

        .faq-item {
            margin-bottom: 20px;
        }

        .faq-item h3 {
            margin-top: 0;
            color: #336699;
        }

        .faq-item p {
            color: #666;
        }

        footer {
            background-color: #336699;
            color: #fff;
            text-align: center;
            padding: 10px;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
        .header-topic{
        
        font-size: 40px;
              text-align: center;
              align: center; 
              color:blue;
             
        }
    </style>
</head>
<body>
    <%@ include file="Header.jsp" %>

    <main>
        <section class="faq-section">
           <h1 class="header-topic">FAQ</h1>
            <h2>General Questions</h2>
            <div class="faq-item">
			    <h3>What is our Employee Management System?</h3>
			    <p>Our Employee Management System (EMS) is a comprehensive software solution designed to streamline and optimize various aspects of employee management within organizations. It offers a wide range of features and functionalities to facilitate efficient handling of employee-related tasks, including:</p>
			    <ul>
			        <li>Management of employee information such as personal details, contact information, and employment history.</li>
			        <li>Assignment and tracking of tasks and projects assigned to employees.</li>
			        <li>Recording and monitoring of employee attendance, including leave requests and approvals.</li>
			        <li>Processing and management of payroll, including salary calculations, deductions, and bonuses.</li>
			        <li>Generation of reports and analytics to gain insights into employee performance, productivity, and overall organizational efficiency.</li>
			        <li>Integration with other systems and tools for seamless workflow management.</li>
			    </ul>
			    <p>Our EMS is designed to simplify HR processes, improve workforce management, and enhance organizational productivity, ultimately contributing to the success and growth of your business.</p>
			</div>
            
            <div class="faq-item">
                <h3>How do I login to the system?</h3>
                <p>To login, navigate to the login page and enter your Employee ID and password.</p>
            </div>
            <div class="faq-item">
                <h3>Is there a mobile app available?</h3>
                <p>Currently, there is no mobile app available for the Employee Management System. However, you can access the system through a web browser on your mobile device.</p>
            </div>
        </section>

        <section class="faq-section">
            <h2>Tasks</h2>
            <div class="faq-item">
                <h3>How do I assign a task to an employee?</h3>
                <p>To assign a task, navigate to the Tasks section and click on the "Assign Task" button. Then, fill out the required details and submit the form.</p>
            </div>
            <div class="faq-item">
                <h3>Can I track the progress of a task?</h3>
                <p>Yes, you can track the progress of a task by viewing the task details in the Tasks section. It will display the current status of the task.</p>
            </div>
        </section>
    </main>

    <footer>
        <p>&copy; 2024 Employee Management System</p>
    </footer>
</body>
</html>
    