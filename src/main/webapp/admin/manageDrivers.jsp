<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List, com.datapackage.model.Driver, com.datapackage.DAO.DriverDAO" %>
<%
    DriverDAO driverDAO = new DriverDAO();
    List<Driver> drivers = driverDAO.getAllDrivers();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Drivers</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <script>
        function confirmDelete(driverId) {
            if (confirm("Are you sure you want to delete this driver?")) {
                document.getElementById("deleteForm-" + driverId).submit();
            }
        }
    </script>
</head>
<body>

<div class="container">
    <h3 class="center-align">Manage Drivers</h3>
    
    <!-- Add Driver Form -->
    <div class="card">
        <div class="card-content">
            <span class="card-title">Add Driver</span>
            <form action="${pageContext.request.contextPath}/DriverServlet" method="post">
                <input type="hidden" name="action" value="add">
                
                <div class="input-field">
                    <input type="text" id="name" name="name" required>
                    <label for="name">Driver Name</label>
                </div>
                <div class="input-field">
                    <input type="text" id="license" name="license" required>
                    <label for="license">License Number</label>
                </div>
                <div class="input-field">
                    <input type="text" id="phone" name="phone" required>
                    <label for="phone">Phone Number</label>
                </div>
                <button type="submit" class="btn waves-effect waves-light">Add Driver</button>
            </form>
        </div>
    </div>

    <!-- Driver List -->
    <h4 class="center-align">Driver List</h4>
    <table class="striped centered">
        <thead>
            <tr>
                <th>Name</th>
                <th>License</th>
                <th>Phone</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <% for (Driver driver : drivers) { %>
            <tr>
                <td><%= driver.getName() %></td>
                <td><%= driver.getLicense() %></td>
                <td><%= driver.getPhone() %></td>
                <td>
                    <!-- DELETE DRIVER FORM -->
                    <form id="deleteForm-<%= driver.getId() %>" action="${pageContext.request.contextPath}/DriverServlet" method="post">
                        <input type="hidden" name="action" value="delete">
                        <input type="hidden" name="id" value="<%= driver.getId() %>">
                        <button type="button" class="btn red" onclick="confirmDelete(<%= driver.getId() %>)">Delete</button>
                    </form>
                </td>
            </tr>
            <% } %>
        </tbody>
    </table>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
</body>
</html>
