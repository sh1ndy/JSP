package dbutil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnectionProvider {
	
	static {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public static Connection getConnection() throws SQLException {
		final String dbURL = "jdbc:mysql://localhost:3306/my_db";
		final String dbID = "root";
		final String dbPW = "root";
		
		return DriverManager.getConnection(dbURL, dbID, dbPW);
	}

}
