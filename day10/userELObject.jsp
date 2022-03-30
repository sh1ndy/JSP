<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setAttribute("name", "최범균");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL Object</title>
</head>
<body>
	요청 URI : ${ pageContext.request.requestURI }<br>
	요청 URI : <%= ((HttpServletRequest) pageContext.getRequest()).getRequestURI() %><br>
	
	request의 name 속성 : ${ requestScope.name }<br>
	request의 name 속성 : ${ name }<br>
	request의 name 속성 : <%= request.getAttribute("name") %><br>
	
	code 파라미터 : ${ param.code }<br>
	code 파라미터 : <%= request.getParameter("code") %><br>
	
	쿠키 : ${ cookie.JSESSIONID.value }<br>
	쿠키 : <%= request.getCookies()[0].getValue() %><br>
</body>
</html>