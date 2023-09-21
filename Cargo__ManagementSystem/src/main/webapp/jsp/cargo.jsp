<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cargo Management System</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <h2 class="mt-4">Cargo</h2>

    <h1>${msg}</h1>

    <form:form action="insert" modelAttribute="cargo" class="mt-4">
        <div class="form-group">
            <label for="name">Name:</label>
            <form:input path="name" class="form-control" id="name" />
        </div>

        <div class="form-group">
            <label for="contactNo">Contact Number:</label>
            <form:input path="contactNo" class="form-control" id="contactNo" />
        </div>

        <div class="form-group">
            <label for="email">Email:</label>
            <form:input path="email" class="form-control" id="email" />
        </div>
          <div class="form-group mb-3">
            <label for="destination">destination</label>
            <form:input path="destination" class="form-control" id="destination" />
        </div>

        <button type="submit" class="btn btn-primary">Add Cargo</button>
    </form:form>

    <a href="viewAll" class="mt-3 btn btn-secondary">View All Cargo</a>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js" integrity="sha384-Rx+T1VzGupg4BHQYs2gCW9It+akI2MM/mndMCy36UVfodzcJcF0GGLxZIzObiEfa" crossorigin="anonymous"></script>
</body>
</html>