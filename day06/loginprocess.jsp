<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		// 파라미터 읽기
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String idsave = request.getParameter("idsave");
		
		// idsave란에 체크가 안되어 있으면 id라는 쿠키를 삭제
		// idsave란에 체크가 되어있으면 id라는 쿠키에 입력한 아이디를 저장	
		Cookie cookie = new Cookie("id", id);
		if (idsave == null) {
			cookie.setMaxAge(0);
		}
		
		response.addCookie(cookie);
		
		
	%>
<jsp:forward page = "./loginresult.jsp" />
</body>
</html>