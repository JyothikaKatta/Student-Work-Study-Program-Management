package com.yourpackage; // Replace with your package name

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/dashboard")
public class DashboardServlet extends HttpServlet {
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Get the session object
        HttpSession session = request.getSession(false); // Get existing session, do not create new one
        
        // Check if the user is logged in
        if (session == null || session.getAttribute("username") == null) {
            // Redirect to login if the session is invalid
            response.sendRedirect("login.jsp");
            return;
        }

        // Forward to the dashboard server JSP for data preparation
        request.getRequestDispatcher("dashboard.server.jsp").forward(request, response);
    }
}
