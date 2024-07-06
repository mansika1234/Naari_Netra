<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Submit Another FeedBack</title>
<link rel="stylesheet" type="text/css" href="css/style1.css" />
<link rel="stylesheet" type="text/css" href="css/style4.css" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<style>

textarea::placeholder {
  text-align:center;
  font-weight: bold;
  font-size:50px;
}
</style>

<script>

var close = document.getElementsByClassName("closebtn");
var i;


for (i = 0; i < close.length; i++) {

  close[i].onclick = function(){

   
    var div = this.parentElement;

    div.style.opacity = "0";


    setTimeout(function(){ div.style.display = "none"; }, 600);
  }
}
</script>
<script>
function val(v)
{
    document.getElementById(v).innerHTML="";
    
}

function validatefeedback()
{
	    var flag=true;
     var msg=document.regForm.feedback.value;
     if(msg==="")
     {
         document.getElementById('feedback_error').innerHTML="FeedBack cannot be empty";
         flag=false;
     }
    
     return flag;
}
</script>


</script>
</head>
<body>
     <div>
         <jsp:include page="HeaderAfterLogin.jsp"/>
     </div>
   <div class="alert" style="background-color:green;">
     <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
        <center><h4>Feedback Submitted Successfully.</h4></center>
     </div>
      </div>
      <div class="form-group">
      <center>
          <label for="feedback" id="tarea" style="color:purple;">FeedBack</label>
      </center>
    
       <form method="post"  name="regForm" onsubmit="return validatefeedback()" action="ccc">
         <textarea class="form-control" placeholder="Submit Another feedback" rows="14" name="feedback" onkeyup="val('feedback_error')"/></textarea>
         <br><h4><span id="feedback_error" style="color: red"></span></h4>
         <input type="submit"  value="Submit"></td>
         
        </form>
  </div>
     <div>
      <jsp:include page="footer.jsp"/>
   </div>

</body>
</html>