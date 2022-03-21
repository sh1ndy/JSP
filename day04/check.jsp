<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%!
	public boolean isNullOrEmpty(String str) {
		if (str == null) {
			return true;
		}
		
		if (str.trim().isEmpty()) {
			return true;
		}
		
		return false;
	}
%>

<%!
	public boolean isInteger(String str) {
		try {
			Integer.parseInt(str);
			return true;	
		} catch (NumberFormatException e) {
			return false;
		}
	}
%>

<%
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	List<String> messages = new ArrayList<>();
	
	if (isNullOrEmpty(name) || isNullOrEmpty(age)) {
		messages.add("입력값이 없습니다.");
	} else {
		if (name.length() != 3) {
			messages.add("이름이 3글자 아님");
		}
		
		if (!isInteger(age)) {
			messages.add("나이가 숫자아님");
		} else {
			Integer ageValue = Integer.valueOf(age);
			if (!(20 <= ageValue || ageValue <= 100)) {
				messages.add("나이의 범위 20 ~ 100 벗어남");
			}
		}
	}
	request.setAttribute("message", messages);
	
%>

<jsp:forward page="./result.jsp" />

