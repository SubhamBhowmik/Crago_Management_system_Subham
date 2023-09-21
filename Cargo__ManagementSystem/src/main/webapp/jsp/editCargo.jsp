<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Cargo</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: white;
	margin: 0;
	padding: 20;
}

h1 {
	text-align: center;
	color: #007bff;
}

form {
	max-width: 400px;
	margin: 0 auto;
	background-color: #ffffff;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

label {
	display: block;
	margin-bottom: 10px;
	font-weight: bold;
	color: #333;
}

input[type="text"] {
	width: 100%;
	padding: 10px;
	margin-bottom: 15px;
	border: 1px solid #ccc;
	border-radius: 4px;
}

input[type="submit"] {
	background-color: #007bff;
	color: #fff;
	padding: 10px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #0056b3;
}

a {
	display: block;
	text-align: center;
	margin-top: 20px;
	text-decoration: none;
	color: #007bff;
}
</style>
</head>
<body>

	<h1>Edit Cargo Information</h1>

	<form:form action="update" modelAttribute="cargo" class="p-3 ">
		<form:hidden path="id" />

		<label for="name">Name:</label>
		<form:input path="name" />
		<br>
		<br>

		<label for="contactNo">Contact Number:</label>
		<form:input path="contactNo" />
		<br>
		<br>

		<label for="email">Email:</label>
		<form:input path="email" />
		<br>
		<br>

		<label for="destination">Destination:</label>
		<form:input path="destination" />
		<br>
		<br>
		<input type="submit" value="Edit Cargo">
	</form:form>

	<a href="viewAll">View All Cargos</a>

</body>
</html>
