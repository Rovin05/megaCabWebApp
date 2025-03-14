<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin - Add Booking</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center">Admin - Add Booking</h2>

        <% if (request.getParameter("success") != null) { %>
            <div class="alert alert-success">Booking added successfully!</div>
        <% } %>

        <form action="${pageContext.request.contextPath}/AdminBookingServlet" method="post">
            <div class="mb-3">
                <label class="form-label">Customer Name:</label>
                <input type="text" class="form-control" name="customerName" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Pickup Address:</label>
                <input type="text" class="form-control" name="address" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Phone Number:</label>
                <input type="tel" class="form-control" name="phone" pattern="[0-9]{10}" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Destination:</label>
                <input type="text" class="form-control" name="destination" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Booking Date:</label>
                <input type="date" class="form-control" name="date" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Booking Time:</label>
                <input type="time" class="form-control" name="time" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Vehicle Type:</label>
                <select class="form-select" name="vehicleType" required>
                    <option value="Standard Car">Standard Car</option>
                    <option value="Compact Car">Compact Car</option>
                    <option value="Passenger Van">Passenger Van</option>
                    <option value="Luxury SUV">Luxury SUV</option>
                </select>
            </div>

            <div class="mb-3">
                <label class="form-label">Price (LKR):</label>
                <input type="number" class="form-control" name="price" required>
            </div>

            <button type="submit" class="btn btn-primary w-100">Add Booking</button>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
