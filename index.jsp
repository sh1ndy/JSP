<!-- HTML 문서는 어떤 구조로 이루어져 있습니까? -->
<!-- https://lux.cuenet.kr/93 -->

<!-- 웹 서비스의 엔드포인트(end-point) 중 클라이언트 역할은 어떠한 소프트웨어가 담당하나요? -->

<!-- HTML 문서는 브라우저(클라이언트)에서 어떻게 처리되나요(추상적으로 설명)? -->

<!-- 정적 웹 서버와 WAS의 차이점은 무엇인가요? -->
<!-- https://codechasseur.tistory.com/25 -->

<!-- Tomcat의 역할은 무엇입니가? -->
<!-- https://kchanguk.tistory.com/2 -->

<!-- Java EE(Jarkarta EE)는 무엇입니까? -->
<!--  -->

<!-- jsp에서 Java코드(문장)을 실행시키기 위한 표현은 무엇인가요? -->
<!-- % %= -->

<!-- HTTP 요청 방식(method)를 2개 배웠습니다. 명칭과 차이점? -->
<!-- get = url에 모든 값들이 노출 / 주소의 길이가 한정되있어서 큰 문서를 보낼때는 사용 불가, post 인코딩  -->

<!-- 웹 서버는 사용자에 요청에 따라 응답코드와 함께 응답한다. 오늘 배운 응답코드 3개와 의미는 어떻게 되나요? -->
<!-- 200 : 성공 , 404 : 클라이언트가 요청한 리소스가 서버에 없음 , 500 " 서버에서 클라이언트 요청을 처리 중에 에러가 발생함 -->

<!-- URL은 무엇이고, 어떻게 구성되어 있나요? -->
<!-- 웹을 뒷받치는 주소체계, 프로토콜:호스트:포트:경로:매개변수:부분 식별자 -->

<!-- form 태그에 대해 간략히 설명해보세요. -->
<!-- 사용자 의견이나 정보를 알기 위해 입력한 큰 틀을 만드는데 사용 입력된 데이터ㅗ를 한 번에 서버로 전송 결과에 따른 웹페이즈 반환 -->

<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>index page</title>
	</head>
	<body>
		<h1>My First JSP</h1>
		<p>현재 시간은<%= LocalDateTime.now() %></p>
		<a href = "./page2.jsp">2번 페이지 이동</a>
	</body>
</html>