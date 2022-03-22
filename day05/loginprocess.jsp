<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%!
	public boolean isNotOrEmpty(String str) {
		if (str == null) {
			return true;
		}
		
		if (str.trim().isEmpty()) {
			return true;
		}
		return false;	
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String idsave = request.getParameter("idsave");
		
		if (!isNotOrEmpty(id) && !isNotOrEmpty(pw)) {
			if (!isNotOrEmpty(idsave)) {
				Cookie cookie = new Cookie("idsave", id);
				response.addCookie(cookie);
			}
			
			if (pw.equals("root")) {
				request.setAttribute("result", id + "님 환영합니다.");
			} else {
				request.setAttribute("result", "비밀번호가 틀렸습니다.");
			}
		} else {
			request.setAttribute("result", "아이디 비밀번호는 필수 입력입니다.");
		}
	%>
<jsp:forward page = "./result.jsp" />
</body>
</html>