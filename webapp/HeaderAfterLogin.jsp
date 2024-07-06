<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Header After Login</title>
<link rel="stylesheet" type="text/css" href="css/style2.css" />
<link rel="stylesheet" type="text/css" href="css/style1.css" />

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
 <style>
 .sos{
    background-color:red;
    display: inline-block;
    padding: 30px 30px;
    margin: 5px;
    font-size: 16px;
    color: white;
    border:thick;
    margin-right:450px;
    border-radius: 60px;
    text-align: center;
    text-decoration: none;
    cursor: pointer;
    transition: background-color 0.3s, transform 0.3s;
 }
 
 </style>
 
</head>
<body>
     <header>

                   <h1>NAARI NETRA</h1>
                   <nav>
                   
                    <button class="sos"><a href="Sos">SOS</a></button>
                    <button class="button"><a href="IndexAfterLogin.jsp">Home</a></button>
                    <button class="button"><a href="index.jsp">Log-Out</a></button>
                    
                    <button class="button"><a href="Profile.jsp">Profile</a></button>
                    <button class="button"><a href="feedback.jsp">Feedback</a></button>       
                 
                  </nav>
                  
               
      </header>
</body>
</html>

