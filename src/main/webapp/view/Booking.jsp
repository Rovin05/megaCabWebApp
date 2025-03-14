<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cab Booking</title>
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">

    <style>
        body {
            background: url('${pageContext.request.contextPath}/images/R.jpg') no-repeat center top fixed;
            background-size: cover;
        }
        .container {
            max-width: 500px;
            margin: 100px auto;
            background: rgba(0, 0, 0, 0.8);
            padding: 20px;
            border-radius: 10px;
            color: white;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.3);
        }
        .form-control {
            background: rgba(255, 255, 255, 0.2);
            border: none;
            color: white;
        }
        .form-control::placeholder {
            color: rgba(255, 255, 255, 0.7);
        }
        .form-label {
            font-weight: bold;
        }
        .btn-custom {
            background-color: #ff4d4d;
            color: white;
            width: 100%;
        }
        .btn-custom:hover {
            background-color: #e60000;
        }
        footer {
            text-align: center;
            color: white;
            margin-top: 20px;
        }
    </style>

    <script>
        function validateForm() {
            let bookingDate = document.getElementById("bookingDate").value;
            let bookingTime = document.getElementById("bookingTime").value;
            let currentDate = new Date().toISOString().split("T")[0]; // Get today's date

            if (bookingDate < currentDate) {
                alert("Booking date cannot be in the past!");
                return false;
            }

            if (!bookingTime) {
                alert("Please select a valid booking time.");
                return false;
            }

            return true;
        }
    </script>
</head>
<body>

    <div class="container">
        <h2 class="text-center mb-4">Book a Cab</h2>

        <% if (request.getParameter("success") != null) { %>
            <div class="alert alert-success">Booking successful!</div>
        <% } %>

        <%-- Retrieve vehicle details if selected from SelectCar.jsp --%>
        <%
            String vehicleType = request.getParameter("vehicleType") != null ? request.getParameter("vehicleType") : "";
            String vehiclePrice = request.getParameter("vehiclePrice") != null ? request.getParameter("vehiclePrice") : "";
        %>

<form action="BookingServlet" method="post" onsubmit="return validateForm()">
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
        <input type="date" id="bookingDate" class="form-control" name="date" required>
    </div>

    <div class="mb-3">
        <label class="form-label">Booking Time:</label>
        <input type="time" id="bookingTime" class="form-control" name="time" required>
    </div>

    <%-- Display selected vehicle details if available --%>
    <% if (!vehicleType.isEmpty() && !vehiclePrice.isEmpty()) { %>
        <div class="mb-3 p-3 bg-info text-white rounded">
            <h5>Selected Vehicle</h5>
            <p><strong>Type:</strong> <%= vehicleType %></p>
            <p><strong>Price:</strong> LKR <%= vehiclePrice %></p>
        </div>
        <input type="hidden" name="vehicleType" value="<%= vehicleType %>">
        <input type="hidden" name="vehiclePrice" value="<%= vehiclePrice %>">
    <% } %>

    <a href="SelectCar.jsp" class="btn btn-info w-100 mb-3">View Cars & Prices</a>
    <button type="submit" class="btn btn-primary w-100">Submit Booking</button>
</form>


        <!-- Back Button -->
        <button onclick="window.location.href='home.jsp'" class="btn btn-secondary w-100 mt-3">Back to Home</button>
    </div>

    <footer>
        <p>&copy; 2025 Mega City Cab | All Rights Reserved</p>
    </footer>

</body>
</html>
