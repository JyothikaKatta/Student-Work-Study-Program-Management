import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/TrackWorkHoursServlet")
public class TrackWorkHoursServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the current session
        HttpSession session = request.getSession();
        
        // Retrieve user input from the form
        String studentId = request.getParameter("studentId");
        String hoursWorked = request.getParameter("hoursWorked");

        // Logic to save hoursWorked into the database (not implemented here)
        // Example: saveHoursWorked(studentId, hoursWorked);

        // Set a success message in session
        session.setAttribute("message", "Work hours tracked successfully!");

        // Redirect to a confirmation page or back to the input page
        response.sendRedirect("trackWorkHours.jsp");
    }
}
