<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dbutil.DbConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DB연결 테스트</title>
</head>
<body>
	<%
		try (Connection conn = DbConnectionProvider.getConnection();
				PreparedStatement pstmt = conn.prepareStatement("SELECT 1");
				ResultSet rs = pstmt.executeQuery();) {
			if (rs.next()) {
				out.println("디비 연결 결과 : " + rs.getInt(1));
			}
		}
	%>
</body>
</html>