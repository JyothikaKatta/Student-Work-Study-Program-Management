package com.example;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/login") // This should match the form action in login.jsp
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        // Get username and password from the request
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Validate the username and password (this is a simple example)
        if ("admin".equals(username) && "password".equals(password)) {
            // Create a session and set the username attribute
            HttpSession session = request.getSession();
            session.setAttribute("username", username); // Store username in session

            // Redirect to dashboard
            response.sendRedirect("dashboard.jsp"); // Make sure dashboard.jsp exists in the webapp folder
        } else {
            // Login failed, redirect back to login with an error
            response.sendRedirect("login.jsp?error=Invalid credentials");
        }
    }
}
