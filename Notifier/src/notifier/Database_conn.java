package notifier;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException; 

public class Database_conn {
	
	public static Connection initializeDatabase() 
	        throws SQLException, ClassNotFoundException 
	    { 
		Class.forName("com.mysql.jdbc.Driver"); 
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/virtual","root","root");
		
	        return conn; 
	    } 
	} 
	




























