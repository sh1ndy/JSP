<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	public int multiply(int a, int b) {
		int c = a * b;
		return c;
	}

	public int add(int a, int b) {
		return a + b; 
	}
	
	public int substract(int a, int b) {
		return a - b;
	}
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선언부를 사용한 두 정수값의 곱</title>
</head>
<body>
	<div>10 * 25 = <%= multiply(10, 25) %></div>
	<div>10 * 25 = <%= add(10, 25) %></div>
	<div>10 * 25 = <%= substract(10, 25) %></div>
	
	<%
		int value1 = 3;
		int value2 = 9;
		
		int addResult = add(value1, value2);
		int substractResult = substract(value1, value2);
	%>
	<div><%= value1 %> + <%= value2 %> = <%= addResult %></div>
	<div><%= value1 %> - <%= value2 %> = <%= substractResult %></div>
	 
</body>
</html>