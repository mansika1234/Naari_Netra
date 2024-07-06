<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Starting Header</title>
<link rel="stylesheet" type="text/css" href="css/style2.css" />
<link rel="stylesheet" type="text/css" href="css/style1.css" />

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
 
</head>
<body>
     <header>

                   <h1>NAARI NETRA</h1>
                   <nav>
                    <button class="button"><a href="index.jsp">Home</a></button>
                    <button class="button"><a href="Signup.jsp">Sign-up</a></button>
                    <div class="dropdown">
                      <button class="button">Login <i class="fas fa-caret-down"></i></button>
                        <div class="dropdown-content">
                             <a href="AdminLogin.jsp">Login As Admin</a>
                              <a href="Login.jsp">Login As User</a>
                        </div>
                        </div>
                   
                    <button class="button"><a href="#bottom">About</a></button>
                    
                  
                  </nav>
                  
               
      </header>
</body>
</html>

