<%@page import="com.jspiders.smswithspringmvc.pojo.StudentPojo"%>
<%@page import="java.util.List"%>
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
             margin-top:100px;
        }

        div.form-container {
            text-align: center;
            margin: 50px auto;
        }

        form {
            border: 1px solid #ddd;
            padding: 20px;
            border-radius: 10px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            margin: 0 auto;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 12px;
            text-align: left;
            background-color: #f2f2f2;
        }

        table th {
            background-color: #3498db;
            color: white;
        }

        table tr:hover {
            background-color: #e5e5e5;
        }

        input[type="text"] {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
            margin-bottom: 10px;
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

        div.message {
            text-align: center;
            margin: 20px auto;
        }

        h1.message {
            color: #3498db;
        }
</style>
</head>
<body>
<div align="center">
		<form action="search" method="post">
			<table border="1px solid">
				<tr>
					<td>Pattern</td>
					<td><input type="text" name="pattern"></td>
				</tr>
			</table>
			<input type="submit" value="SEARCH">
		</form>
	</div>
	<%
	@SuppressWarnings("unchecked")
	List<StudentPojo> students = (List<StudentPojo>) request.getAttribute("students");
	if (students != null && students.size() > 0) {
	%>
	<div align="center">
		<table border="1px solid">
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Email</th>
				<th>Mobile</th>
				<th>Age</th>
			</tr>
			<%
			for (StudentPojo studentPOJO : students) {
			%>
			<tr>
				<td><%=studentPOJO.getId()%></td>
				<td><%=studentPOJO.getName()%></td>
				<td><%=studentPOJO.getEmail()%></td>
				<td><%=studentPOJO.getMobile()%></td>
				<td><%=studentPOJO.getAge()%></td>
			</tr>
			<%
			}
			%>
		</table>
	</div>
	<%
	} else {
	%>
	<div align="center">
		<h1>Students not found.</h1>
	</div>
	<%
	}
	%>
</body>
</html>