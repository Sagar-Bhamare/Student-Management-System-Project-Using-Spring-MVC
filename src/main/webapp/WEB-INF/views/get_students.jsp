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
            max-width: 800px;
            overflow: auto;
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

        tr:hover {
            background-color: #e0e0e0;
        }
</style>
</head>
<body>
	<%
     List<StudentPojo> students=(List<StudentPojo>)request.getAttribute("students");
     if(students!=null && students.size()>0){
    %>

	<div align="center">
		<table border="1px solid">
			<tr>
				<td>Id</td>
				<td>Name</td>
				<td>Email</td>
				<td>Mobile</td>
				<td>Age</td>
			</tr>
			<%
			for (StudentPojo studentPojo : students) {
			%>
			<tr>
				<td><%=studentPojo.getId()%></td>
				<td><%=studentPojo.getName()%></td>
				<td><%=studentPojo.getEmail()%></td>
				<td><%=studentPojo.getMobile()%></td>
				<td><%=studentPojo.getAge()%></td>
			</tr>
			<%
			}
			%>
		</table>
	</div>
	<%
     }else{
	%>
	<div align="center">
		<h1>Students not found.</h1>
	</div>
	<%
	}
	%>
</body>
</html>