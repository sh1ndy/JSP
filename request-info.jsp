<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>클라이언트 및 서버 정보</title>
</head>
<body>
	<p>클라이언트IP = <%= request.getRemoteAddr() %></p>
	<p>요청정보길이 = <%= request.getContentLength() %></p>
	<p>요청정보 인코딩 = <%= request.getCharacterEncoding() %></p>
	<p>요청정보 컨텐츠타입 = <%= request.getContentType() %></p>
	<p>요청정보 프로토콜 = <%= request.getProtocol() %></p>
	<p>요청정보 전송방식 = <%= request.getMethod() %></p>
	<p>요청 URL = <%= request.getRequestURL() %></p>
	<p>컨텍스트 경로 = <%= request.getContextPath() %></p>
	<p>서버이름 = <%= request.getServerName() %></p>
	<p>서버포트 = <%= request.getServerPort() %></p>
</body>
</html>