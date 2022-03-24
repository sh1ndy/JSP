<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="dbutil.DbConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>디비 테스트 페이지</title>
</head>
<body>

	사용자가 국가의 이름을 검색하면
	해당 국가의 이름과 인구수를 보여줄 수 있는

	<%
		try (Connection conn = DbConnectionProvider.getConnection();
				PreparedStatement stmt = conn.prepareStatement("SELECT 1");
				ResultSet rs = stmt.executeQuery();) {
			if (rs.next()) {
				out.println("디비 연결 결과 : " + rs.getInt(1));
			}
		}
	%>
</body>
</html>