<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gugu1</title>
</head>
<style>
	table {border-collapse:collapse;}
	td {border: 1px solid gray; padding:2px;}
</style>
<body>
<table>
<%	for(int i=1; i<=9; i++) {	 %>
	<tr>
<%		for(int j=2; j<=9; j++) {	 %>
			<td>
			<% out.print(j+" x "+i);	%>
			<% out.print(" = "+i*j);	%>
			</td>
<%	}	%>
	</tr>
<%}		%>
</table>
</body>
</html>