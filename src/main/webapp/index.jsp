<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Registration</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script
            src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>

    <!-- Popper JS -->
    <script
            src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        #div1 {
            width: 600px;
            height: auto;
            margin: auto;
            margin-top: 100px;
            z-index: 1;
            position: relative;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }
        body {
            background-color: #f8f9fa;
        }
        .card-header {
            background-color: #003366;
        }
        label {
            font-weight: bold;
        }
        /* Bootstrap button styling */
        .btn-primary {
            color: #fff;
            background-color: #007bff;
            border-color: #007bff;
        }
        .btn-primary:hover {
            background-color: #0069d9;
            border-color: #0062cc;
        }
        .btn-outline-success {
            color: #28a745;
            border-color: #28a745;
        }
        .btn-outline-danger {
            color: #dc3545;
            border-color: #dc3545;
        }
        .btn-outline-success:hover {
            background-color: #28a745;
            border-color: #28a745;
        }
        .btn-outline-danger:hover {
            background-color: #dc3545;
            border-color: #dc3545;
        }
        /* Custom display button */
        .btn-display {
            color: #007bff; /* Blue text color */
            background-color: #fff; /* White background color */
            border-color: #007bff;
        }
        .btn-display:hover {
            color: #fff; /* White text color on hover */
            background-color: #007bff; /* Blue background color on hover */
            border-color: #007bff;
        }
    </style>
</head>
<body class="container-fluid">
<div class="card" id="div1">
    <h2 class="card-header text-center text-light">Registration Form</h2>
    <form class="form p-4" action="register" method="get">
        <div class="form-group">
            <label for="name">Name</label>
            <input type="text" class="form-control" id="name" name="name">
        </div>
        <div class="form-group">
            <label for="city">City:</label>
            <input type="text" class="form-control" id="city" name="city">
        </div>
        <div class="form-group">
            <label for="mobile">Mobile:</label>
            <input type="text" class="form-control" id="mobile" name="mobile">
        </div>
        <div class="form-group">
            <label for="dob">DOB:</label>
            <input type="date" class="form-control" id="dob" name="dob">
        </div>
        <div class="form-group text-center">
            <input type="submit" value="Register" class="btn btn-outline-success mx-2">
            <input type="reset" value="Reset" class="btn btn-outline-danger mx-2">
            <a href="register?action=display" class="btn btn-display mx-2">Display</a>
        </div>
    </form>
</div>
</body>
</html>
