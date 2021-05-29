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

/**
 * Servlet implementation class delete_note_servlet
 */
@WebServlet("/delete_note_servlet")
public class delete_note_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException { 
		String note=request.getParameter("note");
  	 
  	
  	try { 
	Connection conn = Database_conn.initializeDatabase(); 
	PreparedStatement ps = conn.prepareStatement("DELETE from notedetails where name=? ");
	
	ps.setString(1,note);
	
	
	
	int x=ps.executeUpdate();
	RequestDispatcher rs = request.getRequestDispatcher("delete_note_successfully");
  rs.forward(request, response);
	conn.close(); 
	} 
catch (Exception e) { 
		e.printStackTrace(); 
		} 
} 
}
