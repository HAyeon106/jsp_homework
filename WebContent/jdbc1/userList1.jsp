<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, lecture01.*"%>
<%
List<User> list = UserDAO.findAll();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	div.container {wdith:600px; margin:50px auto;}
	thead th {background-color: #eee;}
	table {border-collapse: collapse; width:100%;}
	td, th {padding: 4px; border:1px solid lightgray;}
	td:nth-child(4) {text-align:center;}
</style>
<body>
<div class="container">
	<h1>학생목록</h1>
	
	<table class="table table-bordered table-condensed">
		<thead>
			<th>학번</th>
			<th>이름</th>
			<th>학과</th>
			<th>학년</th>
		</thead>
		<tbody>
			<%for (User user:list){ %>
				<tr>
					<td> <%=user.getUserId() %></td>
					<td> <%=user.getName() %></td>
					<td> <%=user.getEmail() %></td>
					<td> <%=user.getDepartmentName() %></td>
					<td> <%=user.getUserType() %></td>
				</tr>
			<% } %> 
		</tbody>
	</table>
</div>

</body>
</html>