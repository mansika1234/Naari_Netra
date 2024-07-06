package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import CommonConnection.commonConnection;

public class InsertBlockUser {
	
	public void  InsertUser(String email)
	  {
		    Connection connection = commonConnection.getConnection();
			
			
			
			PreparedStatement stmt;
			try {
			    stmt = connection.prepareStatement("insert into blockuser values(?)");
			    stmt.setString(1, email);
			   

				int i = stmt.executeUpdate();
				
				
			} catch (SQLException e) {
				e.printStackTrace();
			}

		}

}
