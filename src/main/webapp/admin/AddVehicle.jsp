<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.datapackage.model.Vehicle" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin - Add Vehicle</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            background: url('https://source.unsplash.com/1600x900/?nature,abstract') no-repeat center center fixed;
            background-size: cover;
        }
        .container-custom {
            max-width: 900px;
            background: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 15px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
        }
    </style>
</head>
<body>

<div class="container mt-4">
    <h2 class="text-center">Add Vehicle</h2>
    
    <% if (request.getParameter("success") != null) { %>
        <div class="alert alert-success">Vehicle added successfully!</div>
    <% } %>

    <div class="card p-4">
        <form action="${pageContext.request.contextPath}/AdminVehicleServlet" method="post" enctype="multipart/form-data">
            <div class="mb-3">
                <label class="form-label">Vehicle Type:</label>
                <input type="text" class="form-control" name="type" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Price (LKR):</label>
                <input type="number" class="form-control" name="price" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Upload Image:</label>
                <input type="file" class="form-control" name="imageFile" id="imageFile" accept="image/*" required>
                <img id="preview" class="vehicle-image" src="#" alt="Preview" hidden>
            </div>
            <div class="mb-3">
                <label class="form-label">Number Plate:</label>
                <input type="text" class="form-control" name="numberPlate" required>
            </div>
            <button type="submit" class="btn btn-primary w-100">Add Vehicle</button>
        </form>
    </div>

    <!-- Display Added Vehicles -->
    <h3 class="mt-5">Added Vehicles</h3>
    <table class="table table-bordered mt-3">
        <thead>
            <tr>
                <th>ID</th>
                <th>Type</th>
                <th>Price</th>
                <th>Image</th>
                <th>Number Plate</th>
            </tr>
        </thead>
       <tbody>
    <%
        List<Vehicle> vehicles = (List<Vehicle>) request.getAttribute("vehicles");
        if (vehicles != null) {
            for (Vehicle v : vehicles) {
    %>
    <tr>
        <td><%= v.getId() %></td>
        <td><%= v.getType() %></td>
        <td>LKR <%= v.getPrice() %></td>
        <td><img src="<%= v.getImage() %>" class="vehicle-image" style="width:100px;height:100px;"></td>
        <td><%= v.getNumberPlate() %></td>
    </tr>
    <%
            }
        } else {
    %>
    <tr><td colspan="5" class="text-center">No vehicles added yet.</td></tr>
    <% } %>
</tbody>

    </table>
</div>

<script>
    document.getElementById('imageFile').addEventListener('change', function(event) {
        let img = document.getElementById('preview');
        let file = event.target.files[0];
        if (file) {
            let reader = new FileReader();
            reader.onload = function(e) {
                img.src = e.target.result;
                img.hidden = false;
            }
            reader.readAsDataURL(file);
        }
    });
</script>

</body>
</html>
