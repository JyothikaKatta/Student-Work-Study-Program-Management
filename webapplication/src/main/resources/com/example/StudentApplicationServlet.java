@WebServlet("/studentApplications")
public class StudentApplicationServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Fetch student applications from the database
        List<Application> applications = ApplicationService.getAllApplications();
        request.setAttribute("applications", applications);
        request.getRequestDispatcher("/jsp/applicationTracking.jsp").forward(request, response);
    }
}
