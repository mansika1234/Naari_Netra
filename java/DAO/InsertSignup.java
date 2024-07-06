package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import CommonConnection.commonConnection;
import POJO.GetterSetterSignUp;
public class InsertSignup {
	public void save(GetterSetterSignUp user ) {
		Connection connection = commonConnection.getConnection();
		
		PreparedStatement stmt;
		PreparedStatement stmt1;
		try {
		    stmt = connection.prepareStatement("insert into register values(?,?,?,?,?,?,?)");
		    stmt1 = connection.prepareStatement("insert into email values(?)");
			stmt.setString(1, user.getUname());
			stmt.setString(2, user.getUpass());
			stmt.setString(3, user.getUmail());
			stmt.setString(4, user.getUnum());
			stmt.setString(5, user.getG1name());
			stmt.setString(6, user.getG1relation());
			stmt.setString(7, user.getG1num());
			stmt1.setString(1, user.getUmail());
			
			int i = stmt.executeUpdate();
			int j = stmt1.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

}
