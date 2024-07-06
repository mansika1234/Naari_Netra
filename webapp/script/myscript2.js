	 function val(v)
            {
                document.getElementById(v).innerHTML="";
                
            }
      
    
		 function validation()
            {
                var flag=true;
                var name1=document.regForm.uname.value;
                var name2=document.regForm.g1name.value;
                
              
                var num1=document.regForm.unum.value;
                var num2=document.regForm.g1num.value;
                
                var email1=document.regForm.umail.value;
                var relation1=document.regForm.g1relation.value;
               
                
                 var name_pattern1=/^[a-zA-Z]{3,30}$/;
              
                var email_pattern = /^([a-zA-Z0-9])(([a-zA-Z0-9])*([\._\+-])*([a-zA-Z0-9]))*@(([a-zA-Z0-9\-])+(\.))+([a-zA-Z]{2,4})+$/;
                var num_pattern=/^[6-9]\d{9}$/;
               
				
				
					 if(!name1.match(name_pattern1) && name1!=="")
                    {
						document.getElementById('name_error').innerHTML="Name is not properly formated";
                        flag=false;
                        
			        }
		
                if(!num1.match(num_pattern)  && num1!=="")
                {
                    document.getElementById('num_error').innerHTML="Number is not properly formated";
                    flag=false;
                }
                
                if(!email1.match(email_pattern)  && email1!=="")
                {
                    document.getElementById('email_error').innerHTML="Email is not properly formatted";
                    flag=false;
                }
               
                if(!name2.match(name_pattern1)  && name2!=="")
                {
                    document.getElementById('name2_error').innerHTML="Name is not properly formated";
                    flag=false;
                }
                
                if(!relation1.match(name_pattern1)  && relation1!=="")
                {
					document.getElementById('relation1_error').innerHTML="Relation is not properly formatted";
                    flag=false;
				}
                
			
                if(!num2.match(num_pattern)  && num2!=="")
                {
                    document.getElementById('num2_error').innerHTML="Number is not properly formated";
                    flag=false;
                }
               
      
                return flag;
            }
      