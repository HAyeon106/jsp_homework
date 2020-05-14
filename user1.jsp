<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, lecture01.*" %>
<%
String s = request.getParameter("id");
int id = (s==null)?0:Integer.parseInt(s);
User user = UserDAO3.findById(id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<h1>사용자</h1>
		
	<table>
		<tr>
			<td>ID</td>
			<td><%= user.getId() %></td>
		</tr>
		
		<tr>
			<td>이름</td>
			<td><%= user.getName() %></td>
		</tr>
		
		<tr>
			<td>학과ID</td>
			<td><%= user.getDepartmentId() %></td>
		</tr>
		
		<tr>
			<td>학과명</td>
			<td><%= user.getDepartmentName() %></td>
		</tr>
		
		<tr>
			<td>이메일</td>
			<td><%= user.getEmail() %></td>
		</tr>
		
		<tr>
			<td>사용자유형</td>
			<td><%= user.getUserType() %></td>
		</tr>
	</table>
</div>
	
</body>
</html>