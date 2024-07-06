
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Block User Successful</title>
<link rel="stylesheet" type="text/css" href="css/style1.css" />
<link rel="stylesheet" type="text/css" href="css/style4.css" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<script type="text/javascript" src="script/myscript4.js"></script>

</head>
<body>
     <div>
      <jsp:include page="AdminHeader.jsp"/>
     </div>
     
   
	<div class="row">
	
		<div class="col-md-3"></div>
		
	<div class="col-md-6">
	 <center>	
	 <br><br>
	<table>
	<tbody>
	
	
	 <form method="post" name="regForm" onsubmit="return blockuser1()" action="BlockUser">
        <div class="alert">
     <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
        <center><h4>User Blocked Successfully.</h4></center>
     </div>
      </div>
        <tr>
	        <td class="hd">Enter User Email id :</td>
	        <td><input type="email" placeholder="Email" name="umail" onkeyup="val('email_error')"/></td>
	        <td><span id="email_error" style="color: red"> </span></td>
		</tr>
	   

		
		<tr>
		   <td colspan="2"><input type="submit" value="Block" style="background-color:red;"></td>
		</tr>
		<tr>
		   <td colspan="2"> <input type="reset" value="reset"></td>
		</tr>
	
		

    </form>
    </tbody>
    </table>
    </center>
  </div>
  
  
   <div class="col-md-3"></div>
   
   </div>
   <br><br><br><br><br><br><br>
   <div>
      <jsp:include page="footer.jsp"/>
   </div>
   
   
</body>
</html>
