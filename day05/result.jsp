<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인</title>
</head>
<body>
	<%= request.getAttribute("result") %>
	<a href = "./login.jsp">로그인 페이지 이동</a>
</body>
</html>