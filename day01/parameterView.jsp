<%@page import="java.util.Map"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div><strong>getParameter() 메서드 사용</strong></div>
	<div>name = <%= request.getParameter("name") %></div>
	<div>address = <%= request.getParameter("address") %></div>
	<div>phoneNumber = <%= request.getParameter("phonenumber") %></div>
	<div>gender = <%= request.getParameter("gender") %></div>
	<div><strong>getParameterValues() 메서드 사용</strong></div>
	<div>
		<%
			String[] hobbyArr = request.getParameterValues("hobby");
			if (hobbyArr != null) {
				for (int i = 0; i < hobbyArr.length; i++) {
		%>
				<div>hobby = <%= hobbyArr[i]%></div>
		<%
				}
			}
		%>
	</div>
	<div><strong>request.getParameterNames() 메서드 사용</strong></div>
	<div>
		<%
			Enumeration e = request.getParameterNames();
			while (e.hasMoreElements()) {
				String name = (String) e.nextElement();
		%>
			<%= name %>
		<%
			}
		%>
	</div>
	<div><strong>request.getParameterMap() 메서드 사용</strong></div>
	<div>
		<%
			Map parameterMap = request.getParameterMap();
			String[] hobbyParam = (String[]) parameterMap.get("hobby");
			if (hobbyParam != null) {
				for (int i = 0; i <hobbyParam.length; i++) {
					
		%>
			hobby = <%= hobbyParam[i] %>
		<%
				}
			}
		%>
	</div>
</body>
</html>