<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="lecture1.jdbc2.*" %>
<%
Professor professor = (Professor)session.getAttribute("professor");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
  body { font-family: 굴림체; }
  div.container { width: 600px; margin: 20px auto; }
  table { width: 500px; border-collapse: collapse; }
  thead tr { background-color: #eee; }
  td, th { border: 1px solid #aaa; padding: 5px; }
</style>  
<body>

<div class = "container">
	<h1>등록 성공</h1>
	
<table>
	<tr>
		<td>ID</td>
		<td><%= professor.getId() %></td>
	</tr>
	<tr>
		<td>교수 이름</td>
		<td><%= professor.getProfessorName() %></td>
	</tr>
	<tr>
		<td>학과</td>
		<td><%= professor.getDepartmentId() %></td>
	</tr>
		
</table>

</div>

</body>
</html>