<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>url tag</title>
</head>
<body>
	<c:url value="http://search.daum.net/search" var="searchUrl">
		<c:param name="w" value="blog"></c:param>
		<c:param name="q" value="공원"></c:param>
	</c:url>
	
	<ul>
		<li>${ searchUrl }</li>
		<li><c:url value="/use_if_tag.jsp" /></li>
		<li><c:url value="./use_if_tag.jsp" /></li>
	</ul>
	
	<c:out value="${ searchUrl }"/>
</body>
</html>