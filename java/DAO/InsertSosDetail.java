package DAO;
import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import CommonConnection.commonConnection;
import DAO.ValidateLogin;

public class InsertSosDetail {
  public void  InsertSos(String datetime)
  {
	    Connection connection = commonConnection.getConnection();
		
		
		String name=ValidateLogin.username;
		String email=ValidateLogin.useremail;
		
		PreparedStatement stmt;
		try {
		    stmt = connection.prepareStatement("insert into Sos values(?,?,?)");
		    stmt.setString(1, name);
		    stmt.setString(2, email);
		    stmt.setString(3, datetime);

			int i = stmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
 }

