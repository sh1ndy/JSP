<%@ page contentType="text/html; charset=utf-8" %>
<%
	String id = request.getParameter("memberId");
	if (id != null && id.equals("madvirus")) {
		response.sendRedirect("./index.jsp?name=madvirus");	
	} else {
		
	
%>
<html>
<head><title>로그인에 실패</title></head>
<body>
	잘못된 아이디입니다.
</body>
</html>
<%
	}
%>