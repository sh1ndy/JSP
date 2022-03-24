<%@page import="country.Country"%>
<%@page import="country.CountryRepo"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dbutil.DbConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>검색 결과</title>
</head>
<body>
<%
	String country = request.getParameter("country");
	CountryRepo repo = new CountryRepo();
	Country result = repo.searchPopulationByName(country);
	
	if (result != null ) {
%>
	<p>검색 국가 : <%= result.getName() %>의 인구 수는 <%= result.getPopulation() %></p>
<%
	} else {	
%>
	<p>검색 결과가 없습니다.</p>
<%
	}
%>
</body>
</html>