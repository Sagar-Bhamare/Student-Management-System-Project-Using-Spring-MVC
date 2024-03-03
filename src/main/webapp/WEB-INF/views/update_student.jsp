<%@page import="com.jspiders.smswithspringmvc.pojo.StudentPojo"%>
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
	StudentPojo student = (StudentPojo) request.getAttribute("student");
	if (student != null) {
	%>
	<div align="center">
		<form action="update_student" method="post">
			<table border="1px solid">
				<tr>
					<td>Id</td>
					<td><input type="text" value="<%=student.getId()%>"
						readonly="true" name="id"></td>
				</tr>
				<tr>
					<td>Name</td>
					<td><input type="text" value="<%=student.getName()%>"
						name="name"></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><input type="text" value="<%=student.getEmail()%>"
						name="email"></td>
				</tr>
				<tr>
					<td>Mobile</td>
					<td><input type="text" value="<%=student.getMobile()%>"
						name="mobile"></td>
				</tr>
				<tr>
					<td>Age</td>
					<td><input type="text" value="<%=student.getAge()%>"
						name="age"></td>
				</tr>
			</table>
			<input type="submit" value="UPDATE">
		</form>
	</div>
	<%
	} else {
	%>
	<div align="center">
		<h1>Student not found.</h1>
	</div>
	<%
	}
	%>
</body>
</html>