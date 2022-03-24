<%@page import="java.util.List"%>
<%@page import="authors.Authors"%>
<%@page import="authors.AuthorsRepo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리스트 페이지</title>
</head>
<body>
	리스트 보여주는 페이지<br />
	<%
		request.setCharacterEncoding("UTF-8");
		AuthorsRepo repo = new AuthorsRepo();
		List<Authors> list = repo.authorsList();
	%>
	
	<%
		for (Authors authors : list) {
	%>
		<%= authors %><br />
	<%
		}
	%>
	
	
</body>
</html>