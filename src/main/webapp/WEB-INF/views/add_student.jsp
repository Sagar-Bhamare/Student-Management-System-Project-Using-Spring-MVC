<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	font-family: 'Arial', sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
}

div {
	text-align: center;
	margin: 50px auto;
	padding: 20px;
	background-color: #fff;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	max-width: 400px;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 20px;
}

table, td {
	border: 1px solid #ddd;
}

td {
	padding: 12px;
	text-align: left;
	background-color: #f2f2f2;
}

input[type="text"] {
	width: calc(100% - 16px);
	padding: 8px;
	box-sizing: border-box;
	margin-top: 5px;
	margin-bottom: 10px;
	border: 1px solid #ccc;
	border-radius: 4px;
	transition: border-color 0.3s ease;
}

input[type="text"]:hover, input[type="text"]:focus {
	border-color: #3498db;
}

input[type="submit"] {
	background-color: #3498db;
	color: white;
	padding: 10px 15px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

input[type="submit"]:hover {
	background-color: #2980b9;
}
</style>
</head>
<body>
	<div align="center">
		<form action="add_student" method="post">
			<table border="1px soild">
				<tr>
					<td>Name</td>
					<td><input type="text" name="name"></td>
				</tr>

				<tr>
					<td>Email</td>
					<td><input type="text" name="email"></td>
				</tr>

				<tr>
					<td>Mobile</td>
					<td><input type="text" name="mobile"></td>
				</tr>
				<tr>
					<td>age</td>
					<td><input type="text" name="age"></td>
				</tr>
			</table>

			<input type="submit" value="ADD">
		</form>
	</div>
	<%
	String message = (String) request.getAttribute("message");
	if (message != null) {
	%>
	<div align="center">
		<h1><%=message%></h1>
	</div>
	<%
	}
	%>

</body>
</html>