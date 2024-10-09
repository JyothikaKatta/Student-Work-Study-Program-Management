<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Logout</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f6f9;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }
        .message {
            text-align: center;
            margin: 20px;
            font-size: 24px;
            color: #333;
        }
    </style>
    <script>
        // Redirect to index.html after 3 seconds
        setTimeout(function() {
            window.location.href = "index.html"; // Redirecting to index.html after logout
        }, 5000); // 3000 milliseconds = 3 seconds
    </script>
</head>
<body>
    <%
        // Invalidate the session to log the user out
        HttpSession currentSession = request.getSession(false); // Get the current session
        if (currentSession != null) {
            currentSession.invalidate(); // Invalidate the session
        }
    %>
    <div class="message">
        <h1>You have been logged out successfully!</h1>
        <p>Redirecting to the home page in 5 seconds...</p>
    </div>
</body>
</html>
