<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" charset="UTF-8">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
	<%
		// 해당 페이지 접속 할 경우 session 회수.
		session.invalidate(); 
	%>
	<script>
		location.href="main.jsp";
	</script>
</body>
</html>