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
            background-color: #3498db;
            text-align: center;
            padding: 20px 0;
            color: white;
        }

        nav h1 {
            margin-top:20px;
            font-size: 24px;
        }

        nav ul {
            list-style: none;
            padding: 0;
            margin: 0;
            display: flex;
            justify-content: flex-end;
        }

        nav li {
            margin: 0 15px;
        }

        nav a {
            text-decoration: none;
            color: white;
            transition: color 0.3s ease;
        }

        nav a:hover {
            color: #ecf0f1; /* Lighter shade on hover */
        }

        div {
            text-align: center;
            margin: 20px auto;
        }

        ul {
            list-style: none;
            padding: 0;
            margin: 0;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }

        li {
            margin: 10px;
        }

        a {
            text-decoration: none;
            color: #2c3e50;
            padding: 10px 20px;
            border: 2px solid #3498db;
            border-radius: 5px;
            transition: background-color 0.3s ease, color 0.3s ease;
            display: block;
        }

        a:hover {
            background-color: #2980b9;
            color: white;
        }
</style>
</head>
<body>
	<%
	String email = (String) request.getAttribute("admin");
	%>
	
	<nav>
	<h1>WELCOME TO STUDENT MANAGEMENT SYSTEM</h1>
	<ul>
	  <li><a href="delete_admin?email=<%=email%>">DELETE ADMIN</a></li>
		<li><a href="log_out">LOG OUT</a></li>
	</ul>
	</nav>
		
		<div>
		<ul>
		<li><a href="home">HOME</a></li>
		<li><a href="add_student">ADD</a></li>
		<li><a href="edit_student">EDIT</a></li>
		<li><a href="edit_student">EDIT</a></li>
		<li><a href="delete_student">DELETE</a></li>
		<li><a href="search">SEARCH</a></li>
		<li><a href="get_students">ALL STUDENTS</a></li>
		
		</ul>
		</div>
</body>
</html>