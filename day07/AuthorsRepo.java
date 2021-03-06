package authors;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.ArrayList;

import dbutil.DbConnectionProvider;

public class AuthorsRepo {
	public void authorInsert(String name, String email) {
		try (Connection conn = DbConnectionProvider.getConnection();
				PreparedStatement pstmt = conn.prepareStatement("INSERT INTO authors (name, email) VALUES (?, ?)");) {
			
			pstmt.setString(1, name);
			pstmt.setString(2, email);
			
			int result = pstmt.executeUpdate();
			if (result == 1) {
				System.out.println("insert 저장 성공!");
			} else {
				System.out.println("저장 실패");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public List<Authors> authorsList() {
		List<Authors> list = new ArrayList<>();
		try (Connection conn = DbConnectionProvider.getConnection();
				PreparedStatement pstmt = conn.prepareStatement("SELECT name, email FROM authors");) {
			try (ResultSet rs = pstmt.executeQuery()) {
				while (rs.next()) {
					String name = rs.getString("name");
					String email = rs.getString("email");	
					
					Authors authors = new Authors(name, email);
					list.add(authors);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}	
		return list;
	}
}
