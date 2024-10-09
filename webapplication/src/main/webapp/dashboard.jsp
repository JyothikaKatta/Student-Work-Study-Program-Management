<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Dashboard</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f6f9;
            margin: 0;
            display: flex;
            flex-direction: column;
            height: 100vh;
        }
        .navbar {
            background-color: #343a40;
            color: white;
            padding: 15px;
            width: 100%;
            z-index: 1000;
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
        }
        .navbar h1 {
            margin: 0;
            text-align: center;
            font-size: 24px;
        }
        .navbar a {
            color: white;
            text-decoration: none;
            padding: 10px 15px;
            border-radius: 5px;
            transition: background-color 0.3s;
            position: absolute;
            right: 20px;
        }
        .navbar a:hover {
            background-color: #c0392b;
        }
        
        .sidebar {
            background-color: #007bff;
            color: white;
            width: 250px;
            padding: 20px;
            height: calc(100vh - 50px);
            display: flex;
            flex-direction: column;
            position: fixed;
            top: 50px;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.2);
        }
        .sidebar h2 {
            color: #fff;
            font-size: 20px;
            margin-bottom: 20px;
            text-align: center;
        }
        .sidebar a {
            color: white;
            text-decoration: none;
            padding: 10px 15px;
            margin: 5px 0;
            border-radius: 5px;
            transition: background-color 0.3s;
            font-size: 16px;
            display: flex;
            align-items: center;
        }
        .sidebar a i {
            margin-right: 10px;
        }
        .sidebar a:hover {
            background-color: #0056b3;
        }
        .content {
            margin-left: 250px;
            padding: 20px;
            flex: 1;
            max-width: 1200px;
            margin-bottom: 50px;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }
        .section {
            margin-bottom: 40px;
            background-color: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 800px;
            width: 100%;
        }
        h2 {
            color: #333;
            margin-bottom: 20px;
        }
        .footer {
            margin-top: auto;
            padding: 15px;
            text-align: center;
            background-color: #343a40;
            color: white;
        }
        .button {
            display: inline-block;
            padding: 10px 20px;
            margin: 10px;
            background-color: green;
            color: white;
            text-align: center;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s, transform 0.1s;
            border: 2px solid green;
        }
        .button:hover {
            background-color: darkgreen;
        }
        .button:active {
            background-color: darkgreen;
            transform: translateY(2px);
        }
        .logout-button {
            background-color: #c0392b;
        }
        .logout-button:hover {
            background-color: #a93226;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <div class="logo">
    <img src="kloo.png" alt="Logo" style="width: 40px; height: auto;">
</div>

        <h1>Student Work Study Program</h1>
        <a href="logout.jsp" class="logout-button" onclick="return confirm('Are you sure you want to logout?');">Logout</a>
    </div>

 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="sidebar">
    <c:choose>
        <c:when test="${not empty sessionScope.userName}">
            <h1>Hello, ${sessionScope.userName}!</h1> <!-- Shows logged-in username -->
        </c:when>
        <c:otherwise>
            <h1>Hello, Guest!</h1> <!-- Shows "Guest" if no user is logged in -->
        </c:otherwise>
    </c:choose>

    <h2>Menu</h2>
    <a href="home.jsp"><i class="fas fa-home"></i> Home</a>
    <a href="jobPostings.jsp"><i class="fas fa-briefcase"></i> Available Job Postings</a>
    <a href="applicationStatus.jsp"><i class="fas fa-check-circle"></i> Application Status</a>
    <a href="payroll.jsp"><i class="fas fa-dollar-sign"></i> Payroll Information</a>
    <a href="feedback.jsp"><i class="fas fa-comments"></i> Provide Feedback</a>
</div>



    <div class="content">
        <div class="section">
            <h2>Welcome to the Student Dashboard</h2>
            <p>Select an option from the menu on the left to get started.</p>
            <div>
                <h3 style="text-align: center; margin-top: 30px;">Select Here!:</h3>
                <div style="display: flex; justify-content: center; flex-wrap: wrap; margin-top: 20px;">
                    <a class="button" href="userManagement.jsp">User Management</a>
                    <a class="button" href="trackWorkHours.jsp">Track Work Hours and Performance Tracking</a>
                    <a class="button" href="notifications.jsp">Notification and Communication</a>
                    <a class="button" href="dashboard.jsp">Dashboard</a>
                    <a class="button" href="reporting.jsp">Reporting and Analytics</a>
                </div>
                <a class="button" href="jobPostings.jsp">View Available Job Postings</a>
                <a class="button" href="applicationStatus.jsp">Check Application Status</a>
                <a class="button" href="payroll.jsp">View Payroll Information</a>
                <a class="button" href="feedback.jsp">Provide Feedback</a>
            </div>
        </div>
    </div>

    <div class="footer">
        <p>&copy; 2024 Student Work Study Program Management. All Rights Reserved.</p>
    </div>
</body>
</html>
