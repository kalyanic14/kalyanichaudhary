package notifier;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import notifier.Database_conn;

/**
 * Servlet implementation class login_servlet
 */
@WebServlet("/login_servlet")
public class login_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException { 
		response.setContentType("text/html;charset=UTF-8");
	    PrintWriter out = response.getWriter();
	    
	   
		String email = request.getParameter("email");
	    String password = request.getParameter("password");
	    
	    HttpSession session=request.getSession();
	    session.setAttribute("email", email);
	    
	    if(checkUser(email, password))
	    {
	        RequestDispatcher rs = request.getRequestDispatcher("login_successful_servlet");
	        rs.forward(request, response);
	    }
	    else
	    {
	       System.out.println("Email or Password incorrect");
	       RequestDispatcher rs = request.getRequestDispatcher("NewFile.html");
	       rs.include(request, response);
	    }
	}
	    public static boolean checkUser(String email,String password) {
	    	boolean st=false;
	    	try {
	    	Connection conn = Database_conn.initializeDatabase();
	    PreparedStatement ps = conn.prepareStatement("select * from register where email=? and password=?");
	    
	    ps.setString(1, email);
	    ps.setString(2, password);
	    
	    ResultSet rs =ps.executeQuery();
	   
	    
	   
	    st = rs.next();

	}
	catch(Exception e) {
	    e.printStackTrace();
	}
	return st;                 
	}  

}
