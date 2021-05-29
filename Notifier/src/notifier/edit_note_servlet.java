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
 * Servlet implementation class edit_note_servlet
 */
@WebServlet("/edit_note_servlet")
public class edit_note_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException { 
	 String note=request.getParameter("note");
  	 String reminderdate=request.getParameter("reminderdate");
  	 String status=request.getParameter("status"); 
  	 
  	 
  	//HttpSession session1=request.getSession();
	//String email=(String)session1.getAttribute("email");
  	try { 
	Connection conn = Database_conn.initializeDatabase(); 
	PreparedStatement ps = conn.prepareStatement("UPDATE notedetails SET reminderdate=?,status=? where name=? ");
	
	ps.setString(1,reminderdate);
	ps.setString(2,status);
	
	ps.setString(3,note);
	
	
	
	int x=ps.executeUpdate();
	RequestDispatcher rs = request.getRequestDispatcher("edit_note_successfully");
  rs.forward(request, response);
	conn.close(); 
	} 
catch (Exception e) { 
		e.printStackTrace(); 
		} 
} 
}