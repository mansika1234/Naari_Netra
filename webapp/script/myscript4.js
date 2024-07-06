
 function val(v)
            {
                document.getElementById(v).innerHTML="";
                
            }

function blockuser1()
		   {
			 var flag=true;
		     var email1=document.regForm.umail.value;
		     
		     var email_pattern = /^([a-zA-Z0-9])(([a-zA-Z0-9])*([\._\+-])*([a-zA-Z0-9]))*@(([a-zA-Z0-9\-])+(\.))+([a-zA-Z]{2,4})+$/;
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
                return flag;
           } 
           
               
               