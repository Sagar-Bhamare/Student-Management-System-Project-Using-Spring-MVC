<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	font-family: 'Arial', sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f4f4f4;
}

nav {
	background-color: #2c3e50; /* New color for the navigation bar */
	text-align: center;
	padding: 50px 0;
}

nav h1 {
	color: white;
	margin: 0;
	font-size: 80px;
}

div {
	text-align: center;
	margin: 50px auto;
}

ul {
	list-style: none;
	padding: 0;
	margin: 0;
}

li {
	margin: auto;
	margin-bottom: 10px;
	width: 200px;
	border-radius: 50px;
}

a {
	text-decoration: none;
	color: #3498db; /* New color for the anchor tags */
	padding: 10px 20px;
	border: 2px solid #3498db;
	border-radius: 5px;
	transition: background-color 0.3s ease, color 0.3s ease;
	display: block; /* Make anchor tags block-level */
}

a:hover {
	background-color: #2980b9;
	color: white;
}
</style>
</head>
<body>
	<nav>
		<a href="home">HOME</a> <a href="add_student">ADD</a> <a
			href="edit_student">EDIT</a> <a href="delete_student">DELETE</a> <a
			href="search">SEARCH</a> <a href="get_students">ALL STUDENTS</a> <a
			href="log_out">LOG OUT</a>
	</nav>
	<%
	String message = (String) request.getAttribute("message");
	if (message != null && (message.equals("Logged in") || message.equals("Invalid Email or Password"))) {
	%>
	<div align="center">
		<h1><%=message%></h1>
	</div>
	<%
	}
	%>
</body>
</html>