<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>작가 기능 안내 페이지</title>
</head>
<body>
	<a href="<%= request.getContextPath()%>/authors/insert">작가 추가</a>
	<a href="<%= request.getContextPath()%>/authors/list">작가목록</a>
</body>
</html>