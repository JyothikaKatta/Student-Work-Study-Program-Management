<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Application Tracking</title>
</head>
<body>
    <h1>Student Application Tracking</h1>
    <table border="1">
        <tr>
            <th>Application ID</th>
            <th>Student Name</th>
            <th>Job Applied For</th>
            <th>Status</th>
        </tr>
        <c:forEach var="application" items="${applications}">
            <tr>
                <td>${application.id}</td>
                <td>${application.studentName}</td>
                <td>${application.jobTitle}</td>
                <td>${application.status}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
