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

import notifier.Database_conn;

/**
 * Servlet implementation class register_servlet
 */
@WebServlet("/register_servlet")
public class register_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException { 
		 String username=request.getParameter("username");
    	 String phone=request.getParameter("phone");
    	 String email=request.getParameter("email"); 
    	 String password=request.getParameter("password");
    	 String confirmpassword=request.getParameter("confirmpassword");
    	
    	 
    	 
    	
    	 
try { 
	Connection conn = Database_conn.initializeDatabase(); 
	PreparedStatement ps = conn.prepareStatement("insert into register (username,mobile_no,email,password,confirm_password)values(?,?,?,?,?)");
	
	ps.setString(1,username);
	ps.setString(2,phone);
	ps.setString(3,email);
	ps.setString(4,password);
	ps.setString(5,confirmpassword);
	
	int x=ps.executeUpdate();
	RequestDispatcher rs = request.getRequestDispatcher("registered_successfully");
    rs.forward(request, response);
	conn.close(); 
	} 
catch (Exception e) { 
		e.printStackTrace(); 
		} 
} 
}