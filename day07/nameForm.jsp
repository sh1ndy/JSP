<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%= request.getAttribute("test") %>
	<!-- 사용자가 이름과 성을 입력할 수 있는 폼=> submit => 서블릿 매핑 => 서블릿에서 해당 요청의 파라미터 값을 확인하여 콘솔 출력. -->
	<form action="<%= request.getContextPath() %>/name" method="post">
		<label for="firstName">이름</label>
		<input type="text" name="firstName" id="firstName"/>
		<label for="lastName">성</label>
		<input type="text" name="lastName" id="lastName"/>
		<input type="submit" value="submit" />
	</form>
</body>
</html>