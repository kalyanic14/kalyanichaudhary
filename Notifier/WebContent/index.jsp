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
  width:100%;

  background-color:green; color:white ;transition:0.2s;
  float: right;
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
  }
</style>
    </head>

    <body>
        <!--<nav class="navbar navbar-inverse">
            <div class="container-fluid">
              <div class="navbar-header">
                
              </div>
             
              <ul class="nav navbar-nav navbar-right">
                <li><a href="register.html"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                <li><a href="adminlogin.html"><span class="glyphicon glyphicon-log-in"></span> Admin Login</a></li>
              </ul>
            </div>
          </nav>-->
          <br><h1><center>Remind Me</center></h1><br>
          <div class="container-fluid">

            <div class="row">
              <div class="col-sm-4" ></div>
              <div class="col-sm-4" style="background-color:lavender;">
              <div class="loginform">
                <h3 class="heading">Login</h3>
                <form method="post" class="form-group " id="form1" action="login_servlet">
                 
                
                  <input    name="email" id="email"  class="form-control"  placeholder="Email" type="text" required class="validate" autocomplete="off">
                  <br>
                  
                  <input   name="password" id="pass"  class="form-control"  placeholder="Password" type="password" required class="validate" autocomplete="off">
                  <br><br>
                  
                  <button type="submit" id="btn" class="form-control"  value="Log in" >Login</button> 
                  <br>
                  <p class="reg">Not a Member?<a href="register.jsp">SignUp</a></p>

                </form>
              </div>
      
              
              
              </div>
              <div class="col-sm-4"></div>
            </div>
        </div>
    </body>
</html>