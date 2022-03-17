<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index</title>
</head>
<body>
	<%
		String name = request.getParameter("name");
		
		if (name != null) {
			name = URLDecoder.decode(name, "UTF-8");
	%>
		<p> <%= name %>님 환영합니다. </p>
	<%		
		} else {
	%>
		<a href = "./form.jsp">아이디 입력으로 이동해주세요.</a>
	<%	
		}
	%>
</body>
</html>