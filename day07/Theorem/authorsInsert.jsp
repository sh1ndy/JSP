<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>작가 추가 기능</title>
</head>
<body>
	작가 추가 기능 페이지
	<form action="<%= request.getContextPath() %>/insertProcess.jsp" method="post">
		<label for="userName">이름 : </label>
		<input type="text" name="userName" id="userName" />
		<label for="userEmail">이메일 : </label>
		<input type="email" name="userEmail" id="userEmail" />
		<input type="submit" value="등록" />
	</form>
</body>
</html>