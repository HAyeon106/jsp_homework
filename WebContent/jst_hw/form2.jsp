<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
String s1 = request.getParameter("number");
String cmd = request.getParameter("numberString"); 
if("one".equals(cmd))	s1 = "one";
else if("two".equals(cmd))	s1 = "two";
else if("three".equals(cmd))	s1 = "three";
else s1 = "one";
%>
<body>
	<form method="get">
		<select name="numberString">
			<option value="one" <%= "one".equals(cmd)?"selected":"" %>> one </option>
			<option value="two" <%= "two".equals(cmd)?"selected":"" %>> two </option>
			<option value="three" <%= "three".equals(cmd)?"selected":"" %>> three </option>
		</select>
	
		<input type="text" name="number" value=<%= s1 %>>
	
		<button type="submit" value="OK"> OK </button>
	</form>
</body>
</html>