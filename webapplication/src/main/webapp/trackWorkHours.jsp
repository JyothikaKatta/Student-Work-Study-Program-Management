<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Track Work Hours</title>
    <link rel="stylesheet" href="styles.css"> <!-- Link to your CSS -->
</head>
<body>
    <h1>Track Your Work Hours</h1>
    
    <table>
        <tr>
            <th>Day</th>
            <th>Hours Worked</th>
        </tr>
        <c:forEach var="entry" items="${workHours}">
            <tr>
                <td>${entry.key}</td>
                <td>${entry.value}</td>
            </tr>
        </c:forEach>
    </table>
    
    <a href="dashboard">Back to Dashboard</a>
</body>
</html>
