<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>폼 생성</title>
</head>
<body>
	<div>
		<form action ="./viewParameter.jsp" method = "post">
			<div>이름 : <input type = "text" name = "name" size = "10"></input></div>
			<div>주소 : <input type = "text" name = "address" size = "30"></input></div>
			<div><input type = "checkbox" name = "pet" value = "dog">강아지</input></div>
			<div><input type = "checkbox" name = "pet" value = "pet">고양이</input></div>
			<div><input type = "checkbox" name = "pet" value = "pig">돼지</input></div>
			<div><input type = "submit" value = "전송"></input></div>
		</form>
		
	</div>
	
	
</body>
</html>