package notifier;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 * Servlet implementation class edit_user_servlet
 */
@WebServlet("/edit_user_servlet")
public class edit_user_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException { 
		 String username=request.getParameter("username");
   	 String phone=request.getParameter("phone");
   	 String email=request.getParameter("email"); 
   	 String password=request.getParameter("password");
   	 
   	//HttpSession session1=request.getSession();
	//String email=(String)session1.getAttribute("email");
   	try { 
	Connection conn = Database_conn.initializeDatabase(); 
	PreparedStatement ps = conn.prepareStatement("UPDATE register SET username=?,mobile_no=?,password=?,confirm_password=? where email=? ");
	
	ps.setString(1,username);
	ps.setString(2,phone);
	
	ps.setString(3,password);
	ps.setString(4,password);
	ps.setString(5, email);
	
	
	int x=ps.executeUpdate();
	RequestDispatcher rs = request.getRequestDispatcher("edit_user_successfully");
   rs.forward(request, response);
	conn.close(); 
	} 
catch (Exception e) { 
		e.printStackTrace(); 
		} 
} 
}