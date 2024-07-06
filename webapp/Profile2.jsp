<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="CommonConnection.*" %>
<%@page import="DAO.ValidateLogin"%>
 <%
                   
              
		        String pass1=ValidateLogin.password;
		       
		        Connection connection = commonConnection.getConnection();
				PreparedStatement ps1=connection.prepareStatement("select * from register where pass=?");
				
 
 %>
<!DOCTYPE html>
<html>
<meta charset="ISO-8859-1">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile Edit</title>
    <link rel="stylesheet" type="text/css" href="css/style2.css" />
    <script type="text/javascript" src="script/myscript2.js"></script>
  
</head>
<body>
<jsp:include page="HeaderAfterLogin.jsp"/>  
 
		      <%
		       
		        ps1.setString(1,pass1);
		        String name=null,umail=null,unum=null,g1name=null,g1relation=null,g1phone=null,g2name=null,g2relation=null,g2phone=null;
		        ResultSet rs1=ps1.executeQuery();
		        while(rs1.next())
		        {
		        	name=rs1.getString("name");
		        	umail=rs1.getString("email");
		        	unum=rs1.getString("unum");
		        	g1name=rs1.getString("g1name");
		        	g1relation=rs1.getString("g1relation");
                    g1phone=rs1.getString("g1phone");
		        	
                  
		        }
		          
                
		       %>
		       
		        
	  <div class="row">
	
		  <div class="col-md-3"></div>
		
	    <div class="col-md-6">
		   <center>  
		      
               <h2  class="profile" style="background-color: yellow;">Edit User Details</h2>
               
		   <table>
              <tbody>
              <form method="post" name="regForm" onsubmit="return validation()" action="ddd">
                 <tr>
                    <td class="profile"><h4>User Name:</h4></td>
                    <td class="profile"><h4><jsp:scriptlet>out.println(name);</jsp:scriptlet></h4></td>
                    <td><input type="text" class="profile" placeholder="Update Name" name="uname" onkeyup="val('name_error')"/><br><span id="name_error" style="color: red"></span></td>
                 </tr>
                 <tr>
                     <td class="profile"><h4>User Email:</h4></td>
                     <td class="profile" ><h4><jsp:scriptlet>out.println(umail);</jsp:scriptlet></h4></td>
                      <td><input type="email" class="profile" placeholder="Update Email" name="umail" onkeyup="val('email_error')"/><br><span id="email_error" style="color: red"></span></td>
                 </tr>
                  <tr>
                     <td class="profile"><h4>User Number:</h4></td>
                     <td class="profile"><h4><jsp:scriptlet>out.println(unum);</jsp:scriptlet></h4></td>
                     <td><input type="number" class="profile" placeholder="Update Phone Number" name="unum" onkeyup="val('num_error')"/><br><span id="num_error" style="color: red"></span></td>
                 </tr>
                 <tr>
                     <td class="profile"> <h4>Gardian Name:</h4></td>
                     <td class="profile"><h4> <jsp:scriptlet>out.println(g1name);</jsp:scriptlet></h4></td>
                     <td><input type=text class="profile" placeholder="Update Gardian Name" name="g1name" onkeyup="val('name2_error')"/><br><span id="name2_error" style="color: red"></span> </td>
                 </tr>
                 <tr>
                     <td class="profile"> <h4>Gardian Relation:</h4></td>
                     <td class="profile"><h4><jsp:scriptlet>out.println(g1relation);</jsp:scriptlet></h4></td>
                     <td><input type="text" class="profile" placeholder="Update Gardian Relation" name="g1relation" onkeyup="val('relation1_error')"/><br><span id="relation1_error" style="color: red"></span></td>
                 </tr>
                 <tr>
                     <td class="profile"> <h4>Gardian Number:</td>
                     <td class="profile"><h4><jsp:scriptlet>out.println(g1phone);</jsp:scriptlet></h4></td>
                     <td><input type="number" class="profile" placeholder="Update Gardian Phone Number" name="g1num" onkeyup="val('num2_error')"/><br><span id="num2_error" style="color: red"></span></td>
                 </tr>
             

                 <tr>
                  <td></td>
                  <td></td>
                  </tr>
                 <tr>
                      <td colspan="2"><input type="submit" style="background-color: red;" id="update" value="Update"></td>  
                 </tr>
                 </form>
                </tbody>
                
            </table>
		     </center>    
		      
	
    </div>
    <div class="col-md-3"></div>
    </div>
    
   <div>
      <jsp:include page="footer.jsp"/>
     </div>      
   
		       
        
</body>
</html>
