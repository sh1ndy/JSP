<%@page import="authors.Authors"%>
<%@page import="java.util.List"%>
<%@page import="authors.AuthorsRepo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>작가 목록 페이지</title>
</head>
<body>
	작가 목록 페이지<br />
	<%
		AuthorsRepo repo = new AuthorsRepo();
		List<Authors> authorsList = repo.list();
		
		for (Authors a : authorsList) {
	%>
		<%= a %><br />
	<%
		}
	%>
</body>
</html>