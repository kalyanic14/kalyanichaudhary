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
 * Servlet implementation class new_note_servlet
 */
@WebServlet("/new_note_servlet")
public class new_note_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
	     
		  String email=request.getParameter("email");  
	   	  String name=request.getParameter("name"); 
	   	  String startdate=request.getParameter("startdate");
	   	  String enddate=request.getParameter("enddate"); 
	   	  String reminderdate=request.getParameter("reminderdate"); 
	   	  String status=request.getParameter("status"); 
	   	  String tag=request.getParameter("tag");
	   	  String description=request.getParameter("description"); 
	  
	   	
	   	 
	try { 
		Connection conn = Database_conn.initializeDatabase(); 
		PreparedStatement ps = conn.prepareStatement("insert into notedetails (email,name,startdate,enddate,reminderdate,status,tag,description)values(?,?,?,?,?,?,?,?)");
		
		
		ps.setString(1,email);
		ps.setString(2,name);
		ps.setString(3,startdate);
		ps.setString(4,enddate);
		ps.setString(5,reminderdate);
		ps.setString(6,status);
		ps.setString(7,tag);
		ps.setString(8,description);
		
		
		

		int x=ps.executeUpdate();
		
		
		RequestDispatcher rs = request.getRequestDispatcher("note_created_successfully");
	   rs.forward(request, response);
	   
		conn.close(); 
		} 
	catch (Exception e) { 
			e.printStackTrace(); 
			} 
	} 

	}
