package author;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dbutil.DbConnectionProvider;

public class AuthorRepository {
	
	public List<Author> getAll() {
		String sql = "SELECT * FROM authors";
		List<Author> list = new ArrayList<>();
		
		try (Connection conn = DbConnectionProvider.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();) {
			while (rs.next()) {
				int id = rs.getInt("id");
				String name = rs.getString("name");
				String email = rs.getString("email");
				
				list.add(new Author(id, name, email));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	public int delete(int id) {
		String sql = "DELETE FROM authors WHERE id = ?";
		int result = 0;
		
		try (Connection conn = DbConnectionProvider.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);) {
			pstmt.setInt(1, id);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	public int add(Author author) {
		String sql = "INSERT INTO authors (name, email) VALUES(?, ?)";
		int result = 0;
		
		try (Connection conn = DbConnectionProvider.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);) {
			pstmt.setString(1, author.getName());
			pstmt.setString(2, author.getEmail());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}
}
