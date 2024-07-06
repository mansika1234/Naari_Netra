
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Blocked</title>
<link rel="stylesheet" type="text/css" href="css/style4.css" />
<link rel="stylesheet" type="text/css" href="css/style1.css" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
 <script type="text/javascript" src="script/myscript.js"></script>

</head>
<body>
     <div>
      <jsp:include page="StartingHeader.jsp"/>
     </div>
     
   
	<div class="row">
	
		<div class="col-md-3"></div>
	
	<div class="col-md-6">
	 <center>	
	<table>
	 <form method="post" name="regForm" onsubmit="return validation1()" action="bbb">
        <tr>
          <td colspan="2" class="alert" style="border-radius:30px">
           <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
            <center><h4>Your Account Has Been Blocked By The Admin</h4></center>
            
           </td>
	   <tr>
	        <td class="hd">Enter Name:</td>
	        <td><input type="text" placeholder="Name" name="u1name" onkeyup="val('name_error')"/><br><span id="name_error" style="color: red"> </span></td>
		</tr>
		<tr>
		   <td class="hd">Enter Password:</td>
		   <td><input type="password" minlength="5" maxlength="10"  placeholder="Password" name="upass" onkeyup="val('pass_error')" id="pass"/><br><span id="pass_error" style="color: red"></span></td> 
           <td><input type="checkbox" onclick="myFunction()">Show Password</td>
        </tr>
	    <tr>
	       <td class="hd">Enter Email:</td>
	       <td><input type="email" placeholder="Email" name="u1mail" onkeyup="val('email_error')"/><br><span id="email_error" style="color: red"></span></td>
		   
		</tr>
		<tr>
		 <td></td>
		 <td><input type="checkbox" name="remember1" value="selected" /> Remember Me</td>
		 </tr>
		<tr>
		   <td colspan="2"><input type="submit" value="Submit"></td>
		</tr>
		<tr>
		   <td colspan="2"> <input type="reset" value="reset"></td>
		</tr>
		<tr>
		  <td></td>
		  <td></td>
		  
		<tr>
		   <td colspan="2" class="td"><a href='ServletCookie' style="color:green; margin:10px;">Use My Saved Information To Login </a></td>
		</tr>

    </form>
    </table>
    </center>
  </div>
  
  
   <div class="col-md-3"></div>
   
   </div>
   <br><br>
   <div>
      <jsp:include page="footer.jsp"/>
   </div>
   
   
</body>
</html>
