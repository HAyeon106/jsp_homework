<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	body {font-family: 굴림체;}
	div.container {width:600px; margin:20px auto;}
	form div {margin-bottom: 10px;}
	input {width: 200px; padding: 4px;}
	button {padding:0.4em 3em; margin-top: 10px;}
</style>
<body>
	<div class = "constainer">
		<form action="text2action.jsp" method = "get">
			<h1>텍스트 입력폼 02</h1>
			
			<div>
				<label> number1: </label>
				<input type="text" name="number1" value="34"/>
			</div>
			
			<div>
				<label> number2: </label>
				<input type="text" name="number2" value="8"/>
			</div>
			
			<button type = "submit" name="cmd" value = "+"> + </button>
			<button type = "submit" name="cmd" value = "-"> - </button>
			<button type = "submit" name="cmd" value = "*"> * </button>
			<button type = "submit" name="cmd" value = "/"> / </button>
		</form>
	</div>
</body>
</html>