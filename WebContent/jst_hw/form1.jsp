<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
String s1 = request.getParameter("number1");
int number = (s1==null)? -1 : Integer.parseInt(s1);
number++;
%>

	<form method = "get">
	<input type="text" name="number1" value=<%= number %> />
	
	<button type = "submit" name="cmd" value = "++"> ++ </button>
	</form>
</body>
</html>