<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Logging Out...</title>
    <style>
        body {
            background: url('${pageContext.request.contextPath}/images/OIP (4).jpeg') no-repeat center center fixed;
            background-size: cover;
            color: white;
            text-align: center;
            font-family: Arial, sans-serif;
            margin-top: 50px;
        }
        .logout-container {
            background: rgba(0, 0, 0, 0.6);
            padding: 20px;
            display: inline-block;
            border-radius: 10px;
        }
    </style>
    <script>
        setTimeout(function() {
            window.location.href = "Signup.jsp";
        }, 2000);
    </script>
</head>
<body>
    <% 
        session.invalidate(); // Destroy session
    %>
    <div class="logout-container">
        <h2>You have been logged out successfully.</h2>
        <p>Redirecting to login page...</p>
    </div>
</body>
</html>