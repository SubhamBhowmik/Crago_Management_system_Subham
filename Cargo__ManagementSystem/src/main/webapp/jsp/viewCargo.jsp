<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>View Cargos</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css">

    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap4.min.js"></script>

    <style>
        /* Custom styles */
        /* Add your custom CSS styles here */
    body {
        background-color: #f8f9fa;
    }

    h3 {
        text-align: center;
        margin-top: 20px;
    }

    a.btn {
        margin-bottom: 20px;
    }

    table.table {
        background-color: #fff;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        margin: 0 auto;
    }

    th, td {
        text-align: center;
    }

    thead {
        background-color: #343a40;
        color: #fff;
    }

    .table a {
        text-decoration: none;
        color: #007bff;
    }

    .table a:hover {
        text-decoration: underline;
    }
    </style>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#emptab').DataTable({
                pagingType: 'full_numbers',
            });
        });
    </script>
</head>
<body>
<div class="container">
    <h3 class="mt-4">View Cargos</h3>
    <a href="/" class="btn btn-primary mb-2">Add</a>

    <table id="emptab" class="table table-bordered table-striped">
        <thead class="thead-dark">
            <tr>
                <th>Cargo ID</th>
                <th>Name</th>
                <th>Contact Number</th>
                <th>Email</th>
                <th>Destination</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
        </thead>
        <tbody class="bg-dark text-white">
            <c:forEach items="${cargos}" var="cargo">
                <tr>
                    <td>${cargo.id}</td>
                    <td>${cargo.name}</td>
                    <td>${cargo.contactNo}</td>
                    <td>${cargo.email}</td>
                    <td>${cargo.destination}</td>
                    <td><a href="editCargo?eid=${cargo.id}" class="btn btn-warning btn-sm">Edit</a></td>
                    <td><a href="deleteCargo?eid=${cargo.id}" class="btn btn-danger btn-sm">Delete</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
