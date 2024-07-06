<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="CommonConnection.*" %>


<% 
                   
              
		   
		        Connection connection = commonConnection.getConnection();
				PreparedStatement ps1=connection.prepareStatement("select * from email");
				PreparedStatement ps2=connection.prepareStatement("select * from Sos where email=?");
				
				
%>
<!DOCTYPE html>
<html>
<meta charset="ISO-8859-1">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Check User Activity</title>
   <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    
   <style>
   
     h4{
        font-size:20px;
        margin:2px;
        font-style:bold;
        letter-spacing: 5px;
        color:green;
     }
  
     .card {
            background-color: #fff;
            border-radius: 8px;
            padding:20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin:20px 300px 15px 300px; 
            text-align: center;
        }

   </style>
</head>
<body>
<jsp:include page="AdminHeader.jsp"/>  
 
		      <% 
		      
		       
		        ResultSet rs1=ps1.executeQuery();
		        String [] email = new String[100];
		        
		        int j=0,i=0;
		        while(rs1.next())
		        {
		        	
		        	email[i]=rs1.getString("email");
		   
		        	i++;
		        	
                  
		        }
		     
		              
                     for (j = 0; j<email.length; j++)
                     { 
                    	 
                    	 String name=null,email1=null;
                    	 String [] datetime = new String[100];
                    	 
                    	 
                           ps2.setString(1, email[j]);
                              ResultSet rs2=ps2.executeQuery();
                              
                              int a=0;
                           
                              while(rs2.next())
        		               {
        		        	
                            	   name=rs2.getString("name");
                 	        	   email1=rs2.getString("email");
                 	        	   datetime[a]=rs2.getString("datetime"); 
                 	        	   a++;
        		                 }
                 	          %>	     
             
                                <h4> <%  
                                         if(name!=null)
                                         { %><div class="card"> <%
                                        	 out.print("Name: "); 
                                    	     out.print(name); %><br><br><%
                                         }
                                        
                                	     
                                     if(email1!=null)
                                      {
                                	    out.print("Email: ");
                 	                    out.print(email1);%><br><br><%
                 	                   
                                      }
                          
                 	               if(datetime[0]!=null)
                 	        	 
                 	                  { 
                 	        	          out.print("Date And Time : "); %><br><br><% 
                 	        	                   for(int k=0;k<datetime.length && datetime[k]!=null;k++)
                 	        	                   {
                 	        	                	  out.println(datetime[k]);%><br><%
                 	        	                   }
                 	        	                	   
                 	        	          
                 	        	                    
                 	        	                 %></h4>
                 	        	  
                 	                  <%}%>
                               
                                </div>
                                 <%}%>
                                 
                                 
        		        	
                                  
        		        
                             
                        
                       
              
              
		   

</body>
</html>
