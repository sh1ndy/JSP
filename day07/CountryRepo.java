package country;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dbutil.DbConnectionProvider;

public class CountryRepo {
	public Country searchPopulationByName(String country) {
		try (Connection conn = DbConnectionProvider.getConnection();
				PreparedStatement stmt = conn.prepareStatement("SELECT name, population FROM country WHERE name = ?");) {
			stmt.setString(1, country);
			try (ResultSet rs = stmt.executeQuery()) {
				while (rs.next()) {
					String name = rs.getString("name");
					int population = rs.getInt("population");
					
					return new Country(name, population);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
}
