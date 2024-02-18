package servlet;

import db.DbManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/auth")
public class AuthServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("user_email");
        String password = req.getParameter("user_password");
        String message = DbManager.auth(email, password);

        if (message.equals("success")){
            resp.sendRedirect("profile.jsp");
        }else {
            req.setAttribute("errorMessage", "Invalid email or password");
            req.getRequestDispatcher("auth.jsp").forward(req, resp);
        }
    }
}
