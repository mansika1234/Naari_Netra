
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Index</title>
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
     <link rel="stylesheet" type="text/css" href="css/style1.css" />
</head>

<body>
     <div>
      <jsp:include page="StartingHeader.jsp"/>
     </div>
      
    <div class="row">
		<div class="col-md-3">
		
		
		
		
		<img src="images/img-1.jpg"><br>
		<img src="images/img-2.jpg">
		 
		</div>
     
        <div class="col-md-6">
        <div class="indexcontent">
        <ul>
        
            <li>Welcome to our safety-focused community!.</li>
            <li>We are a platform that enables you to connect with friends and family in emergency.</li>
            <li>Our application prioritizes personal safety, especially for women, by providing 24/7 assistance during emergencies.</li>
            <li>This application provides 24/7 support for women and is also user-friendly.</li>
            <li>This application features an SOS button, which, when clicked, activates and immediately sends an alert or warning to the registered contacts.</li>
            <li>The alert or warning includes the user's best possible location details along with a message saying "Need help!!".</li>
            <li>In the event of misuse of the application, appropriate action will be taken.</li>
            <li><h4>Please note that clicking the SOS button once is sufficient to send your location and other details during emergencies. 
                     Repeatedly clicking the button has no additional effect and may result in your account being blocked by the admin.</h4></li>
            
         </ul>
            </div>
       </div>
       <div class="col-md-3">
         <img src="images/img-3.jpeg"><br>
		<img src="images/img-4.jpeg"><br>
       </div>
   
    </div> 
    <div>
      <jsp:include page="footer.jsp"/>
     </div>
       
</body>
</html>