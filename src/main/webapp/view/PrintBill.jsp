<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Print Bill</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">

    <style>
        body {
            background-color: #f4f4f9;
            color: #333;
            padding: 30px;
        }
        .bill-container {
            width: 40%;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 10px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        }
        .card {
            margin-bottom: 20px;
            padding: 20px;
        }
        .card h3 {
            margin-bottom: 10px;
        }
        .button-group {
            text-align: center;
            margin-top: 20px;
        }
        footer {
            text-align: center;
            margin-top: 30px;
        }
        @media print {
            .no-print {
                display: none;
            }
        }
    </style>
</head>
<body>

    <div class="bill-container">
        <h2 class="text-center">Mega City Cab Service</h2>

        <div class="card">
            <h3>Vehicle Selected</h3>
            <p><strong>Vehicle Type:</strong> <span id="vehicleType"></span></p>
            <p><strong>Price:</strong> LKR <span id="vehiclePrice"></span></p>
        </div>

        <div class="card">
            <h3>Additional Charges</h3>
            <p><strong>Tax (15%):</strong> LKR <span id="tax"></span></p>
            <p><strong>Discount (5%):</strong> LKR <span id="discount"></span></p>
        </div>

        <div class="card">
            <h3>Total Amount</h3>
            <p><strong>Total:</strong> LKR <span id="totalAmount"></span></p>
        </div>

        <!-- Buttons -->
        <div class="button-group">
            <button class="btn btn-primary no-print" onclick="window.print()">Print Bill</button>
            <a href="CalculateBill.jsp" class="btn btn-warning no-print">Back to Calculation</a>
            <a href="home.jsp" class="btn btn-success no-print">Home</a> <!-- Home Button -->
        </div>

        <!-- Footer -->
        <footer>
            <p>&copy; 2025 Mega City Cab | All Rights Reserved</p>
        </footer>
    </div>

    <script>
        window.onload = function() {
            // Retrieve values from request parameters
            let vehicleType = "<%= request.getParameter("vehicleType") %>";
            let vehiclePrice = parseFloat("<%= request.getParameter("price") %>");

            // Display the selected vehicle type and price
            document.getElementById("vehicleType").innerText = vehicleType;
            document.getElementById("vehiclePrice").innerText = vehiclePrice.toFixed(2);

            // Calculate tax and discount
            let tax = vehiclePrice * 0.15;  // 15% tax
            let discount = vehiclePrice * 0.05;  // 5% discount

            // Calculate the total amount
            let totalAmount = vehiclePrice + tax - discount;

            // Display the tax, discount, and total amount
            document.getElementById("tax").innerText = tax.toFixed(2);
            document.getElementById("discount").innerText = discount.toFixed(2);
            document.getElementById("totalAmount").innerText = totalAmount.toFixed(2);
        }
    </script>

</body>
</html>
