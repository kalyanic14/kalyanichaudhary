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

import notifier.Database_conn;

/**
 * Servlet implementation class new_notebook_servlet
 */
@WebServlet("/new_notebook_servlet")
public class new_notebook_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
	     
	  String email=request.getParameter("email");  
   	  String notebookname=request.getParameter("notebookname"); 
  
   	
   	 
try { 
	Connection conn = Database_conn.initializeDatabase(); 
	PreparedStatement ps = conn.prepareStatement("insert into newnotebook (email,notebookname)values(?,?)");
	
	
	ps.setString(1,email);
	ps.setString(2,notebookname);
	
	
	

	int x=ps.executeUpdate();
	
	
	RequestDispatcher rs = request.getRequestDispatcher("notebook_created_successfully");
   rs.forward(request, response);
   
	conn.close(); 
	} 
catch (Exception e) { 
		e.printStackTrace(); 
		} 
} 

}
