<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Profile</title><link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<style>


.profile-header {
    text-align: center;
    margin-bottom: 20px;
}

.profile-header h2 {
    color: #333;
    margin-bottom: 5px;
    margin-top:5px;
}

.profile-header p {
    color: #666;
    margin-bottom: 5px;
    
    font-weight:600;
    font-size:20px;
}

.profile-summary {
    margin-bottom: 20px;
    color: #666;
    font-weight:600;
    font-size:20px;
}

.profile-section {
    margin-bottom: 20px;
}

.profile-section h2 {
    color: #333;
    border-bottom: 1px solid #ccc;
    padding-bottom: 5px;
    margin-bottom: 10px;
}

.profile-section p {
    color: #666;
    font-weight:600;
    font-size:20px;
    
}

.profile-section ul {
    list-style-type: disc;
    margin-left: 20px;
}

.profile-references {
    margin-top: 20px;
}

/* Responsive design */
@media (max-width: 600px) {
    .container {
        padding: 10px;
    }
}

</style>

</head>
<body>
   
   <div>
      <jsp:include page="AdminHeader.jsp"/>
     </div>
      
   <div style="text-align:center;">
    <div class="profile-header">
        <h2>Sritam</h2>
        <p>Email: sritam@email.com</p>
        <p>Phone: (123) 456-7890</p>
    </div>

    <div class="profile-summary">
        <p>Detail-oriented administrative professional with over 5 years of experience supporting executives and teams in fast-paced environments.
           <br>Proven ability to manage office operations, streamline processes, and enhance efficiency. Strong organizational skills, excellent 
           <br>communication, and proficiency in office management software.</p>
    </div>

    <div class="profile-section">
        <h2>Work Experience</h2>
        <p>- Administrative Assistant<br>
           XYZ Company, Anytown, USA<br>
           March 2019 - Present<br>
           - Managed executive calendars, scheduled meetings, and coordinated travel arrangements.<br>
           - Prepared reports, presentations, and correspondence for senior management.<br>
           - Handled incoming calls, emails, and inquiries, ensuring prompt and courteous responses.</p>

        <p>- Office Coordinator<br>
           ABC Corporation, Somewhere City, USA<br>
           July 2016 - February 2019<br>
           - Supported office operations by maintaining supplies, equipment, and facilities.<br>
           - Assisted in organizing company events, meetings, and team-building activities.<br>
           - Managed office budgets and expenses, ensuring cost-effectiveness.</p>
    </div>

    <div class="profile-section">
        <h2>Skills</h2>
        <p>- Office Management<br>
           - Calendar Management<br>
           - Communication Skills<br>
           - Time Management<br>
           - Proficient in Microsoft Office Suite (Word, Excel, PowerPoint, Outlook)</p>
    </div>

    <div class="profile-section">
        <h2>Education</h2>
        <p>- Bachelor of Arts in Business Administration<br>
           University of City, Anytown, USA<br>
           Graduated: May 2016</p>
    </div>

    <div class="profile-section">
        <h2>Achievements</h2>
        <p>- Implemented a new filing system that reduced retrieval time by 30%.<br>
           - Received Employee of the Month award twice for outstanding performance and dedication.</p>
    </div>

    <div class="profile-references">
        <h2>References</h2>
        <p>Available upon request.</p>
    </div>
</div>


    <div>
      <jsp:include page="footer.jsp"/>
     </div> 
</body>
</html>