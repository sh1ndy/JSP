<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 업로드</title>
</head>
<body>
	<form action="${ pageContext.request.contextPath }/upload" method="post" enctype="multipart/form-data">
		<label>업로드 파일 선택<input type="file" name="upload"/></label>
		<input type="submit" />
	</form>
</body>
</html>