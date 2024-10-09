@WebServlet("/userManagement")
public class UserManagementServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve and display all users from the database
        List<User> users = UserService.getAllUsers();
        request.setAttribute("users", users);
        request.getRequestDispatcher("/jsp/userManagement.jsp").forward(request, response);
    }
}
