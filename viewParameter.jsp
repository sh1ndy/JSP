<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.util.Enumeration" %>
<%@ page import = "java.util.Map" %>
<% 
	request.setCharacterEncoding("utf-8"); 
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청 파라미터 출력</title>
</head>
<body>
	<div><strong>request.getParameter() 메서드 사용</strong></div>
	<div>name 파라미터 = <%= request.getParameter("name") %></div>
	<div>address 파라미터 = <%= request.getParameter("address") %></div>
	<div>
		<div><strong>request.getParameterValues() 메서드 사용</strong></div>
		<%
			String[] values = request.getParameterValues("pet");
			if (values != null) {
				for (int i = 0; i < values.length; i++) {
		%>
			<%= values[i] %>		
		<% 			
				}
			}
		%>
	</div>
	<div><strong>request.getParameterNames() 메서드 사용</strong></div>
	<%
		Enumeration paramEnum = request.getParameterNames();
		while (paramEnum.hasMoreElements()) {
			String name = (String) paramEnum.nextElement();
	%>
		<%= name %>
	<%
		}
	%>
	<div><strong>request.getParameterMap() 메서드 사용</strong></div>
	<%
		Map parameterMap = request.getParameterMap();
		String[] nameParam = (String[]) parameterMap.get("pet");
		if (nameParam != null) {
			for (int i = 0; i < nameParam.length; i++) {
	%>
		name = <%= nameParam[i] %>
	<%
			}
		}
	%>
</body>
</html>