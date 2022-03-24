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
	리스트 보여주는 페이지
	<%
		AuthorsRepo repo = new AuthorsRepo();
		Authors list = repo.authorsList();
	%>
	
	<%
		if (list != null) {
	%>
		<p>이름 : <%= list.getUserName() %>, 이메일 : <%= list.getUserEmail() %></p>
	<%
		} else {
	%>
		<p>보여줄 리스트가 없습니다.</p>
	<%
		}
	%>
	
</body>
</html>