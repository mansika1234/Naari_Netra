package DAO;



import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import CommonConnection.commonConnection;
import POJO.GetterSetterCookieUpdate;
import Controller.ServletCookie;
public class UpdateCookieData{
	public void save(GetterSetterCookieUpdate user ) {
		Connection connection = commonConnection.getConnection();
		System.out.println(connection);
		PreparedStatement stmt;
		String pass=ServletCookie.pass;
		try {
		    String name=null,umail=null,unum=null,g1name=null,g1relation=null,g1phone=null;
		    stmt = connection.prepareStatement("select * from register where pass=? " );
		    stmt.setString(1, pass);
		    ResultSet rs1=stmt.executeQuery();  
	        while(rs1.next())
	        {
	        	name=rs1.getString("name");
	        	umail=rs1.getString("email");
	        	unum=rs1.getString("unum");
	        	g1name=rs1.getString("g1name");
	        	g1relation=rs1.getString("g1relation");
                g1phone=rs1.getString("g1phone");
	        	
              
	        }
	          
	        String name1=user.getUname();
	        String mail1=user.getUmail();
	        String num1=user.getUnum();
	        String g1=user.getG1name();
	        String grelation1=user.getG1relation();
	        String gnum1=user.getG1num();
	        
			if(name1=="" || name1.trim()=="")
			{
				name=name;
			}
			else
			{
				name=name1;
			}
			if(mail1=="" || mail1.trim()=="")
			{
				umail=umail;
			}
			else
			{
				umail=mail1;
			}
			if(num1=="" || num1.trim()=="")
			{
				unum=unum;
			}
			else {
				unum=num1;
			}
			if(g1=="" || g1.trim()=="")
			{
				g1name=g1name;
			}
			else
			{
				g1name=g1;
			}
			if(grelation1=="" || grelation1.trim()=="")
			{
				g1relation=g1relation;
			}
			else
			{
				g1relation=grelation1;
			}
			if(gnum1=="" || gnum1.trim()=="")
			{
				g1phone=g1phone;
			}
			else
			{
				g1phone=gnum1;
			}
		
			stmt = connection.prepareStatement("update register set name=?,email=?, unum=?, g1name=?,g1relation=?,g1phone=? where pass=? ");
			stmt.setString(1,name);
			stmt.setString(2,umail);
			stmt.setString(3,unum );
			stmt.setString(4,g1name );
			stmt.setString(5,g1relation);
			stmt.setString(6, g1phone);
				
			stmt.setString(7,pass);
			int i = stmt.executeUpdate();	
			
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

}