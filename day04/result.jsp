<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과 확인</title>
</head>
<body>
	<%
		List<String> list = (List<String>) request.getAttribute("message");
		if (list.size() == 0) {
			out.println("<p>Good!</p>");
		} else {
			out.println("<ul>");
			for (String s : list) {
				out.println("<li>");
				out.println(s);
				out.println("</li>");
			}
			out.println("</ul>");
		}
	%>
</body>
</html>