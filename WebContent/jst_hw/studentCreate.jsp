<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="lecture01.Student.*" %>
<%
int id=0;
String studentNumber="";
String name="";
int departmentId;
int year=0;
String errorMessage=null;
Student student = new Student(id, studentNumber, name, 0, year);

request.setCharacterEncoding("UTF-8");

if(request.getMethod().equals("POST")){

	String strId = "";
	String strDepart = "";
	String strYear = "";
	
	if((strId = request.getParameter("id")) == ""){
		id = 0;
	} else{
		id = Integer.parseInt(strId);
	}
	studentNumber = request.getParameter("studentNumber");
	name = request.getParameter("name");
	if((strDepart = request.getParameter("department")) == null){
		departmentId =1;
	} else{
		departmentId = Integer.parseInt(strDepart);
	}
	
	if((strYear = request.getParameter("year")) == ""){
		year = 0;
	} else{
		year = Integer.parseInt(strYear);
	}
	
	if(id == 0)	errorMessage="ID를 입력하세요.";
	else if(studentNumber == null || studentNumber.length() == 0)	errorMessage="학번을 입력하세요.";
	else if(name == null || name.length() == 0)	errorMessage="이름을 입력하세요.";
	else if(departmentId == 0)	errorMessage="학과을 선택하세요.";
	else if(year == 0)	errorMessage="학년을 입력하세요.";
	else{
		student.setId(id);
		student.setStudentNumber(studentNumber);
		student.setName(name);
		student.setDepartmentId(departmentId);
		student.setYear(year);
		session.setAttribute("student",student);
		response.sendRedirect("studentCreate_success.jsp");
	}
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://kit.fontawesome.com/68abb170e0.js" crossorigin=:anonymous></script>
<title>Insert title here</title>
</head>
<style>
	body {font-famiㅣy: 굴림체; font-size: 10pt;}
	div.container {width: 400px; margin: 20px auto;}
	form div {margin-bottom: 20px;}
	label {display: block;}
	input.text {width:200px; padding:5px;}
	select.department {width: 200px; padding:5px;}
	button {padding:0.7em 2em; border: 1px solid #aaa; border-radius: 4px;
		background: linear-gradient(#fff, #ddd); color: black;
		font-famiㅣy: 굴림체; font-size: 10pt; line-hegith: 1em;
		text-decoration: none; cursor: pointer; display: inline-block;}
	button.active{
		-ms-transform: translateY(2px);
		-webkit-transform: translateY(2px);
		transform: translateY(2px);
		background: #ccc;
	}
	div.error {
		width: 400px; margin: 20px auto; padding:15px; border:1px solid #f00; 
		background-color: pink;
		font-family: 굴림체; font-size: 10pt;
		display:inline-block
	}
</style>
<body>
<div class = "container">
	<form method = "post">
		<h1>학생 등록</h1>
		<div>
			<label>ID</label>
			<input type="text" class="text" name="id"/>
		</div>
		<div>
			<label>학번</label>
			<input type="text" class="text" name="studentNumber"/>
		</div>
		<div>
			<label>이름</label>
			<input type="text" class="text" name="name"/>
		</div>
		<div>
			<label> 학과 </label>
			<select class="department">
				<option value="1" > 소프트웨어공학과 </option>
				<option value="2" > 컴퓨터공학과 </option>
				<option value="3" > 정보통신공학과 </option>
				<option value="4" > 글로컬IT공학과 </option>
			</select>
		</div>
		<div>
			<label>학년</label>
			<input type="text" class="text" name="year"/>
		</div>
		<button type="submit">
			<i class="fas fa-user-plus"></i> 학생 등록
		</button>>
	</form>
<% if (errorMessage != null){ %>
	<div class="error">
		학생등록 실패: <%= errorMessage %>
	</div>
<%} %>
</div>
</body>
</html>