<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>합 구하기</title>
	</head>
	<body>
		<%
			int sum = 0;
			for (int i = 0; i < 10; i++) {
				sum += i;
			}
			
		%>
		<div>1 ~ 9 합 : <%= sum %></div>
		
		<%
			int sum2 = 0;
			for (int i = 11; i<= 20; i++) {
				sum2 += i;
			}
		%>
		
		<div>11 ~ 20 합 : <%= sum2 %></div>
		<hr />
		<%= 1 + 2 + 3 + 4 + 5 %>
	</body>
</html>