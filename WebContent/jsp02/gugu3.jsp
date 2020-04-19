<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gugu3</title>
</head>
<style>
	table {border-collapse:collapse;}
	td {border:1px solid gray; padding:5px;}
</style>
<body>
	<table>
		<tr>
<%			for(int i=2; i<=5; i++){			%>
			<td>
<%				for(int j=1; j<=9; j++){		%>
<%					out.print(i+" x "+j);		%>
<%					out.print(" = "+i*j);		%>
<%					out.println("				<br/>");		%>
<%					}			%>
			</td>
<%			}			%>
			
		</tr>
		<tr>
<%			for(int i=6; i<=9; i++){			%>
			<td>
<%				for(int j=1; j<=9; j++){		%>
<%					out.print(i+" x "+j);		%>
<%					out.print(" = "+i*j);		%>
<%					out.println("				<br/>");		%>
<%					}			%>
			</td>
<%			}			%>
			
		</tr>
	</table>
</body>
</html>