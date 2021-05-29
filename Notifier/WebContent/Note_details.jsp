<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="notifier.Database_conn" %>
<%@ page import="java.sql.PreparedStatement" %>
<!DOCTYPE html>

<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>Collapsible sidebar using Bootstrap 4</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Bootstrap CSS CDN -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="adminpagestyle.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
    <!-- Font Awesome JS -->
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
<style>
.column
{
column-width:100px;
}
.column2
{
column-width:100px;
}
.column3
{
column-width:500px;
}
.icon-logout
{ color:white;
}</style>
</head>


<body>
            
    <div class="wrapper">
        <!-- Sidebar  -->
        


    

        <!-- Page Content  -->
        <div id="content">

            
            <br>
			<h3 style="color:black;">Note</h3>
            <div id="contitle">
                
         	
            <% 
            String note=request.getParameter("note");
            try{  
            	
            	
            	Connection conn = Database_conn.initializeDatabase(); 
            	              
            	PreparedStatement ps=conn.prepareStatement("select name,startdate,enddate,reminderdate,status,tag,description from notedetails where name='"+note+"'");
            	ResultSet rs=ps.executeQuery();
            	
            	%>
            
                
                <% 
            	while(rs.next())  
            	{  
            		
            		%>
            		<table>
  					<tr height="50px">
  					<th class="column3" scope="row">Name</th>
    				<td><%= rs.getString(1)%></td>
    				</tr>
    				<tr height="50px">
    				<th class="column3" scope="row">Start Date</th>
    				<td><%= rs.getString(2)%></td>
    				</tr>
    				<tr height="50px">
    				<th class="column3" scope="row">End Date</th>
    				<td><%= rs.getString(3)%></td>
    				</tr>
    				<tr height="50px">
    				<th class="column3" scope="row">Reminder date</th>
    				<td><%= rs.getString(4)%></td>
    				</tr>
    				<tr height="50px">
    				<th class="column3" scope="row">Status</th>
    				<td><%= rs.getString(5)%></td>
	    			</tr>
	    			<tr height="50px">
	    			<th class="column3" scope="row">Tag</th>
    				<td><%= rs.getString(6)%></td>
    				</tr>
    				<tr height="50px">
    				<th class="column3" scope="row">Description</th>
    				<td><%= rs.getString(7)%></td>
    				</tr>
  					
  					</table>
  					<br><br>
  					<button><a href="dashboard.jsp">Back</a></button>
  					<br>	
  					<% }
            	}
            catch(Exception e2)
            {
            	e2.printStackTrace();

            }  
                
            finally{
            	out.close();
            } 
		%>
  				
  				
                
            </div>
            
         </div>
        

    </div>
    
    <!-- jQuery CDN - Slim version (=without AJAX) -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <!-- Popper.JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').toggleClass('active');
            });
        });
    </script>
</body>

</html>