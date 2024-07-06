package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import POJO.GetterSetterLogin;
import CommonConnection.commonConnection;
public  class ValidateLogin{
	 public static String password;
	 public static String username;
	 public static String useremail;
	 public static int flag2;
	public  int Check(String name,String email,String pass)
	{  
		
		int flag=0;
		flag2=0;
		try{
			
			Connection connection = commonConnection.getConnection();
			PreparedStatement ps=connection.prepareStatement("select * from register where name=?");
			PreparedStatement ps1=connection.prepareStatement("select * from blockuser where email=?");
			ps.setString(1, name);
	        ResultSet rs1=ps.executeQuery();
	        while(rs1.next())
	        {
	        	
	        	 String pass1=rs1.getString("pass");
	        	 String email1=rs1.getString("email");
	        	
	        	 if(pass.equals(pass1) && email.equals(email1))
	        	 {
	        		 username=name;
	        		 useremail=email;
	        		 password=pass;
	        		 ps1.setString(1,email1);
	        		 flag=1; 
	        	 }
	        	      
	        }
	        ps1.setString(1, useremail);
	        ResultSet rs2=ps1.executeQuery();
	        
	        while(rs2.next())
	        {
	             flag2++;  	 
	        	      
	        }
	       
				   
		}
		
	  catch(Exception e)
	  {
		  e.printStackTrace();
	  }
	
	if(flag==1)
	{
		
		return 1;
	}
	else
		return 0;
	
	}

	
}
