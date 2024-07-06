package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import POJO.GetterSetterLogin;
import CommonConnection.commonConnection;
public  class ValidateAdminLogin{
	
	public  int Check(String name,String pass)
	{  
		int flag=0;
		try{
			
			Connection connection = commonConnection.getConnection();
			PreparedStatement ps=connection.prepareStatement("select * from admin where name=?");
			ps.setString(1, name);
			
	        ResultSet rs1=ps.executeQuery();
	        while(rs1.next())
	        {
	        	
	        	 String pass1=rs1.getString("pass");
	        	 
	        	
	        	 if(pass.equals(pass1))
	        	 {
	        		 
	        		 flag=1; 
	        	 }
	        	      
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
