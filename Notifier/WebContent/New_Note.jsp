<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
 
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>



<style>
    *{
margin:0;
padding:0;
font-family:'Times New Roman';
font-weight: bold;

}

.block1
{
    background-color: aqua;
}
.block2
{
    background-color: rgb(255, 0, 119);
}
.block3
{
    background-color: rgb(251, 255, 0);
}
#email,#pass{
text-align:center;  
}
i{
  position:absolute;
padding:10px;
}
#p{
  position:absolute;
padding:20px 10px; 
}
input{
  margin-top: 10px;
}
.heading{
 text-align:center;
}
.reg{
  text-align: center;
  margin-top: 50px;
}
.loginform{
  border-radius: 12px;
}
#btn{
  width:20%;

  background-color:green; color:white ;transition:0.2s;
  float: right;
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
  }
</style>
    </head>

    <body style="background-color:black;">
    
       <%
       HttpSession session1=request.getSession();
		String email=(String)session1.getAttribute("email");
		%>
		
         <br>
          <div class="container-fluid">

            <div class="row">
              <div class="col-sm-4" ></div>
              <div class="col-sm-4" style="background-color:white;">
              <div class="loginform">
                <h3 class="heading">Create new note</h3>
                <form method="post" class="form-group " id="form1" action="new_note_servlet">
                 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                 <input    name="email" id="email"    value="<%= email %>" type="text" required class="validate" autocomplete="off" readonly><br><br>
                
                  <input    name="name" id="name"  class="form-control"  placeholder="Note Name" type="text" required class="validate" autocomplete="off">
                  <br>
                  <input    name="startdate" id="startdate"  class="form-control"  placeholder="dd-mm-yyyy Start Date" type="text" required class="validate" autocomplete="off">
                  <br>
                  <input    name="enddate" id="enddate"  class="form-control"  placeholder="dd-mm-yyyy End Date" type="text" required class="validate" autocomplete="off">
                  <br>
                  <input    name="reminderdate" id="reminderdate"  class="form-control"  placeholder="dd-mm-yyyy Reminder Date" type="text" required class="validate" autocomplete="off">
                  <br>
                  <input    name="status" id="status"  class="form-control"  placeholder="Status" type="text" required class="validate" autocomplete="off">
                  <br>
                  <input    name="tag" id="tag"  class="form-control"  placeholder="Tag" type="text" required class="validate" autocomplete="off">
                  <br>
                  <input    name="description" id="description"  class="form-control"  placeholder="Description" type="text" required class="validate" autocomplete="off">
                  <br>
                 
                  <button type="submit" id="btn" class="form-control"  value="Log in" >Create</button> 
                  <br>
                  

                </form>
              </div>
      
              
              
              </div>
              <div class="col-sm-4"></div>
            </div>
        </div>
    </body>
</html>