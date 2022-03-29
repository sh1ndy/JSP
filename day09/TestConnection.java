import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.junit.Test;

import dbutil.DbConnectionProvider;

public class TestConnection {

	@Test
	public void test() {
		int result = 0;
		try (Connection conn = DbConnectionProvider.getConnection();
				PreparedStatement pstmt = conn.prepareStatement("SELECT 1");
				ResultSet rs = pstmt.executeQuery();) {
			
			if (rs.next()) {
				result = rs.getInt(1);
			}
//			assertNotNull(conn); // 접속이 잘되었는지.
		} catch (SQLException e) {
			e.printStackTrace();
		}
		assertEquals(1, result);
	}

}
