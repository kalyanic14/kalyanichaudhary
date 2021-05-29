package notifier;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class login_successful_servlet
 */
@WebServlet("/login_successful_servlet")
public class login_successful_servlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
		
		
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
	 
        response.sendRedirect("dashboard.jsp");
      }
   

}
