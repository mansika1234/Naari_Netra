package CommonConnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class commonConnection {
	static public Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		Connection connection = null;
		try {
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/Naari","root","root");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return connection;
	}


}