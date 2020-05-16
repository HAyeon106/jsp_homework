<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, lecture01.*" %>
<%
String srchText = request.getParameter("srchText");
if(srchText==null) srchText="";
List<User> list;
if(srchText=="")
	list = UserDAO3.findAll();
else
	list = UserDAO3.findByName(srchText);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	div.container {width:800px; margin: 50px auto;}
	table {border-collapse:collapse; width:100%; margin-top:30px;}
	td, th {border:1px solid lightgray; padding:4px; height:25px;}
	thead {background-color: #eee;}
</style>
<body>
<div class="container">
	<h1>사용자목록</h1>
	<form>
		<label>이름</label>
		<input type="text" name="srchText" placeholder="검색조건" value="<%= srchText %>"/>
	</form>
	
	<table>
		<thead>
			<tr>
				<td>사용자 아이디</td>
				<td>이름</td>
				<td>이메일</td>
				<td>학과</td>
				<td>사용자 유형</td>
			</tr>
		</thead>
		
		<tbody>
			<% for(User user : list) {%>
			<tr>
				<td> <%= user.getUserId() %> </td>
				<td> <a href="user1.jsp?id"=<%=user.getId()%>><%= user.getName() %></a></td>
				<td> <%= user.getEmail() %></td>
				<td> <%= user.getDepartmentName() %></td>
				<td> <%= user.getUserType() %></td>
			</tr>
			<% } %>
		</tbody>	
	</table></div>
</body>
</html>