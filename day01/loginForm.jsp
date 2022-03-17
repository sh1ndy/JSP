<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Form</title>
</head>
<body>
	<form action = "./parameterView.jsp" method = "post">
		<div><h1>로그인 페이지</h1></div>
		<div>이름 : <input type = "text" name = "name"></input></div>
		<div>주소 : <input type = "text" name = "address"></input></div>
		<div>전화번호 : <input type = "text" name = "phonenumber"></input></div>
		<div>
			<input type = "radio" name = "gender" value = "man">남자</input>
			<input type = "radio" name = "gender" value = "Famle">여자</input>
		</div>
		<div>
			<input type = "checkbox" name = "hobby" value = "soccer">축구</input>
			<input type = "checkbox" name = "hobby" value = "basketball">농구</input>
			<input type = "checkbox" name = "hobby" value = "baseball">야구</input>
			<input type = "checkbox" name = "hobby" value = "swiming">수영</input>
			<input type = "checkbox" name = "hobby" value = "run">달리기</input>
		</div>
		<div><input type = "submit" value = "전송"></input></div>
	</form>
</body>
</html>