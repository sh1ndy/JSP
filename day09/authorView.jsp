<%@page import="author.Author"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	List<Author> author = (List<Author>) request.getAttribute("list");
%>

<c:set var="author" value="<%= author %>" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Authors 목록 리스트</title>
</head>
<body>
	<ul>
		<c:forEach var="i" items="${ author }">
			<li>${i}</li>
		</c:forEach>
	</ul>
</body>
</html>