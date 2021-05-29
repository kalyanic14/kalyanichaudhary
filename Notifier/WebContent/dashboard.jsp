
<!--function myFunction() {
	  var myWindow = window.open("", "", "edit_user.html");
	  
	}-->
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

    <!-- Bootstrap CSS CDN -->
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
column-width:600px;
}
.icon-logout
{ color:white;
}
* {
  box-sizing: border-box;
}

form.example input[type=text] {
  padding: 10px;
  font-size: 17px;
  border: 1px solid grey;
  float: left;
  width: 80%;
  background: #f1f1f1;
}

form.example button {
  float: left;
  width: 20%;
  padding: 10px;
  background: #2196F3;
  color: white;
  font-size: 17px;
  border: 1px solid grey;
  border-left: none;
  cursor: pointer;
}

form.example button:hover {
  background: #0b7dda;
}

form.example::after {
  content: "";
  clear: both;
  display: table;
}
.icon-color{
color:white;
}
.bell
{
padding-right:1em;
padding-top:1em;
}</style>
</head>


<body>
    <div class="wrapper">
    
        <!-- Sidebar  -->
        <nav id="sidebar">
            <%
       HttpSession session1=request.getSession();
		String email=(String)session1.getAttribute("email");
		HttpSession session2=request.getSession();
	    session2.setAttribute("email", email);
		%>
		

            <ul class="list-unstyled components">
              
                <li class="active">
                
                    &nbsp Hi, &nbsp<%= email %>
                    
                   
                </li>
              
                <li>
                    <a href="Notebooks.jsp">Notebooks</a>
                </li>
                
                <li>
                    <a href="Notes.jsp">Notes</a>
                </li>
                <li>
                     <a href="edit_user.jsp">Edit User</a>                   
    </li>
            </ul>

          
        </nav>
        

    

        <!-- Page Content  -->
        <div id="content">

            <nav class="navbar navbar-expand-lg navbar-light bg-dark">
                <div class="container-fluid">

                    <button type="button" id="sidebarCollapse" class="btn btn-info">
                        <i class="fas fa-align-left"></i>
                        
                    </button>
                    
                    <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <i class="fas fa-align-justify"></i>
                    </button>
                   
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="nav navbar-nav ml-auto">
                        <li class="bell">
							<i class="fa fa-bell" style="font-size:24px;color:white"></i>
                        </li>
                        
                            <li class="nav-item active">
                                <a class="nav-link" id="navcolor" href="index.jsp"><button type="button" class="btn btn-danger">Log Out</button></a>
                            </li>
                           
                        </ul>
                    </div>
                </div>
            </nav>
            <br>
<form class="example" action="Note_details.jsp" style="margin:auto;max-width:300px">
  <input type="text" placeholder="Search Note" name="note">
  <button type="submit"><i class="fa fa-search"></i></button>
</form>
            <div id="contitle">
            
                <h3>Notes</h3>
                <br>
                <% try{  
            	
            	
            	Connection conn = Database_conn.initializeDatabase(); 
            	              
            	PreparedStatement ps=conn.prepareStatement("select name,startdate from notedetails where email='"+email+"'");
            	ResultSet rs=ps.executeQuery();
            	
            	%>
            
                
                <% 
            	while(rs.next())  
            	{  
            		
            		%>
            		<table>
  					<tr>
    				<td class="column"><%= rs.getString(1)%></td>
    				<% 
    				String note=rs.getString(1);
    				HttpSession sessiona=request.getSession();
	    			sessiona.setAttribute("note", note);
	    			%>
	    			<td class="column3" style="color:blue">Started on : <%= rs.getString(2) %></td>
    				<td class="column2"><a href="edit_note.jsp"><i style="font-size:20px" class="fa">&#xf044;</i>Edit</a></td>
    				<td><a href="delete_note.jsp"><i class="fa fa-trash"></i> Delete</a></td>
  					</tr>
  					</table>
  					<br><br><br>	
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
            
           

                <div class="row" id="block">
                    
                    <div class="col-sm-3" id="block1" >No Of Book</div>
                    <div class="col-sm-1"></div>
                    
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