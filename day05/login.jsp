<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	Cookie[] cookies = request.getCookies();
	String idsave = "";
	
	for (Cookie c : cookies) {
		if (c.getName().equals("idsave")) {
			idsave = c.getValue();
		}
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<form action = "./loginprocess.jsp" method = "post">
		<label for = "id">아이디 : </label>
		<input type = "text" name = "id" value = "<%= idsave %>"/>
		<label for ="pw">패스워드 : </label>
		<input type = "password" name = "pw"/>
		<input type = "checkbox" id = "idsave" name = "idsave"/><label for = "idsave">아이디 저장</label>
		<input type = "submit" value = "로그인"/>
	</form>
</body>
</html>