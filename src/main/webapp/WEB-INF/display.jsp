<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Data</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        /* Add your custom CSS styles here */
        /* Example: */
        .my-4 {
            margin-top: 4rem;
            margin-bottom: 4rem;
        }
    </style>
</head>
<body class="container-fluid">
<h2 class="my-4">User Data</h2>
<div class="table-responsive">
    <table class="table table-striped table-bordered">
        <thead class="table-dark">
        <tr>
            <th scope="col">Name</th>
            <th scope="col">City</th>
            <th scope="col">Mobile</th>
            <th scope="col">DOB</th>
        </tr>
        </thead>
        <tbody>
        <%-- Java code for fetching data from servlet response --%>
        <%
            // Retrieve data from servlet request attribute
            List<Map<String, Object>> users = (List<Map<String, Object>>) request.getAttribute("users");

            if (users != null) {
                for (Map<String, Object> user : users) {
                    String name = (String) user.get("name");
                    String city = (String) user.get("city");
                    String mobile = (String) user.get("mobile");
                    String dob = user.get("dob").toString(); // Adjust data type as per your database
        %>
        <tr>
            <td><%= name %></td>
            <td><%= city %></td>
            <td><%= mobile %></td>
            <td><%= dob %></td>
        </tr>
        <%
                }
            }
        %>
        </tbody>
    </table>
</div>
</body>
</html>
