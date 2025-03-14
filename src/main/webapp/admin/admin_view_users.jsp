<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List, com.datapackage.model.User" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin - View Users</title>
    
    <!-- Materialize CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
</head>
<body class="container">
    <h4 class="center-align">Registered Users</h4>

    <table class="striped centered">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Address</th>
                <th>Contact</th>
                <th>Username</th>
                <th>Created At</th>
            </tr>
        </thead>
        <tbody>
            <% List<User> users = (List<User>) request.getAttribute("users");
               if (users != null && !users.isEmpty()) {
                   for (User user : users) { %>
                    <tr>
                        <td><%= user.getId() %></td>
                        <td><%= user.getName() %></td>
                        <td><%= user.getAddress() %></td>
                        <td><%= user.getContact() %></td>
                        <td><%= user.getUname() %></td>
                        
                    </tr>
            <% } } else { %>
                <tr><td colspan="6" class="center-align">No users found</td></tr>
            <% } %>
        </tbody>
    </table>

    <br>
    <a href="admin_dashboard.jsp" class="btn waves-effect waves-light">Back to Dashboard</a>

    <!-- Materialize JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
</body>
</html>
