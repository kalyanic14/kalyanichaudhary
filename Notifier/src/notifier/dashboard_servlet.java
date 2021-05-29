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

import notifier.Database_conn;

/**
 * Servlet implementation class dashboard_servlet
 */
@WebServlet("/dashboard_servlet")
public class dashboard_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	public void doGet(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
  
response.setContentType("text/html");  
PrintWriter out = response.getWriter();  
          
 
HttpSession session=request.getSession();
String email=(String)session.getAttribute("email"); 
try{  
	Connection conn = Database_conn.initializeDatabase(); 
	PreparedStatement ps=conn.prepareStatement("select username from register where email=' "+email+" ' ");  
	
	ResultSet rs=ps.executeQuery();
}
	catch(Exception e2)
	{
		e2.printStackTrace();

	}  
	    
	finally{
		out.close();
	}  
	  
	}
}
