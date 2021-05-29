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
 * Servlet implementation class delete_notebook_servlet
 */
@WebServlet("/delete_notebook_servlet")
public class delete_notebook_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException { 
		String note=request.getParameter("note");
  	 
  	
  	try { 
	Connection conn = Database_conn.initializeDatabase(); 
	PreparedStatement ps = conn.prepareStatement("DELETE from newnotebook where notebookname=? ");
	
	ps.setString(1,note);
	
	
	
	int x=ps.executeUpdate();
	RequestDispatcher rs = request.getRequestDispatcher("delete_notebook_successfully");
  rs.forward(request, response);
	conn.close(); 
	} 
catch (Exception e) { 
		e.printStackTrace(); 
		} 
} 
}
