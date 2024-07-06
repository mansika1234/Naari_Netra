<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SignUp</title>
<link rel="stylesheet" type="text/css" href="css/style1.css" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<script src="script/myscript.js"></script>
<script>
function validation()
{
    var flag=true;
    var name1=document.regForm.uname.value;
    var email1=document.regForm.umail.value;
    var pass=document.regForm.upass.value;
    var num1=document.regForm.unum.value;
    var name2=document.regForm.g1name.value;
    var relation1=document.regForm.g1relation.value;
    var num2=document.regForm.g1num.value;
    var name_pattern1=/^[a-zA-Z]{3,30}$/;
    var email_pattern = /^([a-zA-Z0-9])(([a-zA-Z0-9])*([\._\+-])*([a-zA-Z0-9]))*@(([a-zA-Z0-9\-])+(\.))+([a-zA-Z]{2,4})+$/;
    var num_pattern=/^[6-9]\d{9}$/;
    if(pass=="")
    {
		document.getElementById('pass_error').innerHTML="Password cannot be empty";
        flag=false;
	}
	
    if(!name1.match(name_pattern1))
    {
    	    if(name1.length<3)
    	    	document.getElementById('name_error').innerHTML="Name length should be greater than 3";
    	    else if(name1.length>30)
    	    	document.getElementById('name_error').innerHTML="Name length should be less than 30";
    	    else
			document.getElementById('name_error').innerHTML="Name is not properly formated";
            flag=false;
    }

    if(name1==="")
    {
        document.getElementById('name_error').innerHTML="Name cannot be empty";
        flag=false;
    }
    if(!num1.match(num_pattern))
    {
        document.getElementById('num_error').innerHTML="Number is not properly formated";
        flag=false;
    }
    if(num1==="")
    {
        document.getElementById('num_error').innerHTML="Number cannot be empty";
        flag=false;
    }
    if(!email1.match(email_pattern))
    {
        document.getElementById('email_error').innerHTML="Email is not properly formatted";
        flag=false;
    }
    if(email1==="")
    {
        document.getElementById('email_error').innerHTML="Email cannot be empty";
        flag=false;
    }
    if(!name2.match(name_pattern1))
    {
    	if(name2.length<3){
    		document.getElementById('name2_error').innerHTML="Name length should be greater than 3";
    	}
    	else if(name2.length>30)
    		document.getElementById('name2_error').innerHTML="Name length should be less than 30";
    	else
        document.getElementById('name2_error').innerHTML="Name is not properly formated";
        flag=false;
    }
    if(name2==="")
    {
        document.getElementById('name2_error').innerHTML="Name cannot be empty";
        flag=false;
    }
    if(!relation1.match(name_pattern1))
    {
		document.getElementById('relation1_error').innerHTML="Relation is not properly formatted";
        flag=false;
	}
    if(relation1=="")
    {
		document.getElementById('relation1_error').innerHTML="Relation cannot be empty";
        flag=false;
	}

    if(!num2.match(num_pattern))
    {
        document.getElementById('num2_error').innerHTML="Number is not properly formated";
        flag=false;
    }
    if(num2==="")
    {
        document.getElementById('num2_error').innerHTML="Number cannot be empty";
        flag=false;
    }
    
   
    return flag;
}



</script>

  


</head>
<body>
     <%@include file="StartingHeader.jsp" %>
     
     
     
	<div class="row">
	
		<div class="col-md-3"></div>
		
	<div class="col-md-6">
	 <center>	
	<table>
	<tbody>
	<form method="post" name="regForm" onsubmit="return validation()" action="aaa">
	
     <tr>
       <td class="hd">Enter Name:</td>
       <td><input type="text" placeholder="Name" name="uname" onkeyup="val('name_error')"/><br><span id="name_error" style="color: red"></span></td>
     </tr>
      
     <tr>
        <td class="hd">Enter Email:</td>
        <td><input type="email" placeholder="Email" name="umail" onkeyup="val('email_error')"/><br><span id="email_error" style="color: red"></span></td>
     </tr> 
     <tr>
     <tr>
        <td class="hd">Enter Password:</td>
        <td><input type="password" minlength="5" maxlength="10"  placeholder="Password" name="upass" onkeyup="val('pass_error')" id="pass"/><br><span id="pass_error" style="color: red"></span></td> 
        <td><input type="checkbox" onclick="myFunction()">Show Password</td>
      <tr>
       <td class="hd">Enter Phone Number:</td>
       <td><input type="number" placeholder="Phone Number" name="unum" onkeyup="val('num_error')"/><br><span id="num_error" style="color: red"></span></td>
     </tr>
     <tr>
       <td class="hd">Enter Gaurdain Name:</td>
       <td><input type=text placeholder="Name" name="g1name" onkeyup="val('name2_error')"/><br><span id="name2_error" style="color: red"></span> </td>
     </tr>
     <tr>
       <td class="hd">Enter Relation:</td>
        <td><input type="text" placeholder="relation" name="g1relation" onkeyup="val('relation1_error')"/><br><span id="relation1_error" style="color: red"></span></td>
     </tr>
    <tr>
       <td class="hd">Enter Gardian Phone Number:</td>
       <td><input type="number" placeholder="Phone Number" name="g1num" onkeyup="val('num2_error')"/><br><span id="num2_error" style="color: red"></span></td>
    </tr>
   
    <tr>
      <td colspan="2"><input type="submit" value="Submit"></td>  
    </tr>
    <tr>
    <td colspan="2" ><input type="reset" value="Reset" name="Reset"/></td>
    </tr>
       
  </form>
  </tbody>
  </table>
  </center>
  </div>

  
  
   <div class="col-md-3"></div>
   
 
   <div>
      <jsp:include page="footer.jsp"/>
     </div>
   </div>
</body>
</html>
