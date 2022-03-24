<%@page import="authors.AuthorsRepo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String userName = request.getParameter("userName");
		String userEmail = request.getParameter("userEmail");
		
		AuthorsRepo repo = new AuthorsRepo();
		repo.insert(userName, userEmail);
	%>
</body>
</html>