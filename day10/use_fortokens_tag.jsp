<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>token 태크</title>
</head>
<body>
	<c:forTokens var="token" items="빨강색,주항색.노락색.초록색,파랑색,남색.보락색" delims=",.">
		${ token }
	</c:forTokens>
</body>
</html>