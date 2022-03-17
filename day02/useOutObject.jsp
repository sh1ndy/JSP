<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>out 기본 객체 사용</title>
</head>
<body>
	<%
		out.println("안녕하세요?");
	%>
	<br />
	out 기본 객체를 사용하여
	<%
		out.println("출력한 결과입니다.");
	%>
	<br />
	<%= "다시 안녕하세요" %>
	<%= "표현식을 통한 출력입니다." %>
</body>
</html>