package notifier;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class note_created_successfully
 */
@WebServlet("/note_created_successfully")
public class note_created_successfully extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
		
		
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
	 
        response.sendRedirect("Notes.jsp");
      }

}