<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, lecture1.jdbc2.*" %>
<% 
List<Professor> list = ProfessorDAO.findAll();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/lecture01/res/common.css">
<title>Insert title here</title>
</head>
<style>
  div.container { width: 600px; }
  h1 { margin-bottom: -20px; }
  a.btn { float: right; margin-bottom: 5px; }
</style>
<body>

<div class="container">

<h1>교수 목록</h1>
<a class="btn" href="professorCreate.jsp">교수등록</a>

<table class="table">
	<thead>
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>학과</th>
		</tr>
	</thead>
	<tbody>
		<% for(Professor professor:list){ %>
		<tr>
			<td> <%= professor.getId() %> </td>
			<td> <%= professor.getProfessorName() %> </td>
			<td> <%= professor.getDepartmentName() %> </td>
		</tr>
		<% } %>
	</tbody>

</table>

</div>

</body>
</html>