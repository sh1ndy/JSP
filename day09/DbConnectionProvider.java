package dbutil;

import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;


public class DbConnectionProvider {
	
	private static DataSource dataSource;
	
	static {
		BasicDataSource basic = new BasicDataSource();
		basic.setUrl("jdbc:mysql://localhost:3306/my_db");
		basic.setDriverClassName("com.mysql.cj.jdbc.Driver");
		basic.setUsername("root");
		basic.setPassword("root");
		
		dataSource = basic;
	}
	
	public static Connection getConnection() throws SQLException {
		return dataSource.getConnection();
	}

}
