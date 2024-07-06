<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="CommonConnection.*" %>
<%@page import="DAO.ValidateLogin"%>
 <%
                   
              
		   
		        Connection connection = commonConnection.getConnection();
				PreparedStatement ps1=connection.prepareStatement("select * from feedback");
				
 
%>
<!DOCTYPE html>
<html>
<meta charset="ISO-8859-1">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback Check</title>
    <link rel="stylesheet" type="text/css" href="css/style2.css" />
    <script type="text/javascript" src="script/myscript.js"></script>
   <style>
     h1{
       color:black;
     }
   
   </style>
</head>
<body>
<jsp:include page="AdminHeader.jsp"/>  
 
		      <%
		      
		       
		        ResultSet rs1=ps1.executeQuery();
		        String [] name = new String[100];
		        String [] email = new String[100];
		        String [] msg= new String[100];
		        int j=0,i=0;
		        while(rs1.next())
		        {
		        	name[i]=rs1.getString("name");
		        	email[i]=rs1.getString("email");
		        	msg[i]=rs1.getString("msg");
		        	i++;
		        	
                  
		        }
		       
                
		       %>
		   <center>  
		      
               <h2  class="profile" style="background-color: yellow;">User FeedBack</h2>
               
		   <table>
              <tbody>
              <tr>
                 <td class="profile"><h2 style="color:black;">Name</h2></td>
                    <td class="profile"><h2 style="color:black;">Email</h2></td>
                    <td class="profile"><h2 style="color:black;">Message</h2></td>
              </tr>
              
              <tr>
                  <td class="profile">
                    <%
                     for (j = 0; j<i; j++) {%>
                      <font color = "green" size ="6">
                        <% out.print(name[j]);%>
                        ____________________
                    	</font><br /><br />
                        <%}%>
              
 
 
                     </td>
              
                  <td class="profile">
                    <%
                     for (j = 0; j<i; j++) {%>
                      <font color = "green" size ="6">
                        <% out.print(email[j]);%>
                        ____________________
                    	</font><br /><br />
                        <%}%>
              
 
 
                   </td>
               
                  <td class="profile">
                  
                    <%
                     for (j = 0; j<i; j++) {%>
                      <font color = "green" size ="6">
                        <% out.print(msg[j]);%>
                        _____________________
                    	</font><br /><br />
                        <%}%>
         
                  </td>
                  
               </tr>
                 
                 
                
                
                </tbody>
            </table>
		     </center>    
  
</body>
</html>
