<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>choose 태그</title>
</head>
<body>
	<ul>
		<c:choose>
			<c:when test="${ param.name == 'bk' && param.age > 20}">
				<li>당신의 이름은 ${ param.name } 이고, 나이는 ${ param.age } 입니다.</li>
			</c:when>
			<c:when test="${ param.age > 20 }">
				<li>당신은 20세 이상입니다.</li>
			</c:when>
			<c:otherwise>
				<li>당신은 'bk'가 아니고 20세 이상이 아닙니다.</li>
			</c:otherwise>
		</c:choose>
	</ul>
</body>
</html>