<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리쿼스트 어트리뷰트 값 출력</title>
</head>
<body>
	<p><%= request.getAttribute("myText") %></p>
	<p>${ requestScope.myText }</p>
	<p>${ myText }</p>
	표현식 : <%= request.getAttribute("noName") %><br>el : ${ noName }
</body>
</html>