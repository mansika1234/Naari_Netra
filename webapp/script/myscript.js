	 function val(v)
            {
                document.getElementById(v).innerHTML="";
                
            }
      
         function myFunction()
         {
			
            var x = document.getElementById("pass");
             if (x.type === "password") 
              {
                   x.type = "text";
              } 
             else 
              {
                x.type = "password";
              }
          }
		
          
		  function validation1()
            {
                var flag=true;
                var name2=document.regForm.u1name.value;
                var email2=document.regForm.u1mail.value;  
               
                var pass=document.regForm.upass.value;
                var name_pattern=/^[a-zA-Z]{3,30}$/;
                var email_pattern = /^([a-zA-Z0-9])(([a-zA-Z0-9])*([\._\+-])*([a-zA-Z0-9]))*@(([a-zA-Z0-9\-])+(\.))+([a-zA-Z]{2,4})+$/;
                if(pass=="")
                {
					document.getElementById('pass_error').innerHTML="Password cannot be empty";
                    flag=false;
				}
                if(!name2.match(name_pattern))
                {
		
                    document.getElementById('name_error').innerHTML="Name is not properly formated";
                    flag=false;
                }
                if(name2==="")
                {
                    document.getElementById('name_error').innerHTML="Name cannot be empty";
                    flag=false;
                }
                
                if(!email2.match(email_pattern))
                {
                    document.getElementById('email_error').innerHTML="Email is not properly formatted";
                    flag=false;
                }
                if(email2==="")
                {
                    document.getElementById('email_error').innerHTML="Email cannot be empty";
                    flag=false;
                }
                return flag;
               
               
               
   } 
          
 