package com.yourpackage; // Replace with your package name

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/jobPostings")
public class JobPostingsServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if (session == null || session.getAttribute("username") == null) {
            response.sendRedirect("login.jsp"); // Redirect if not logged in
            return;
        }

        // Sample job postings data
        List<String> jobPostings = new ArrayList<>();
        jobPostings.add("Software Developer - Apply Now");
        jobPostings.add("Web Designer - Apply Now");
        jobPostings.add("Data Analyst - Apply Now");

        request.setAttribute("jobPostings", jobPostings); // Pass job postings to JSP
        request.getRequestDispatcher("jobPostings.jsp").forward(request, response); // Forward to JSP
    }
}
