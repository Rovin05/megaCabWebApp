<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>

    <!-- Materialize CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    
    <style>
        .login-container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .card {
            padding: 20px;
            max-width: 400px;
            width: 100%;
            text-align: center;
        }
        .btn {
            width: 100%;
        }
    </style>
</head>
<body>

<div class="container login-container">
    <div class="card">
        <div class="card-content">
            <span class="card-title">Admin Login</span>
            <form action="${pageContext.request.contextPath}/AdminLoginServlet" method="post">
                <div class="input-field">
                    <input type="text" id="username" name="username" required>
                    <label for="username">Admin Username</label>
                </div>
                <div class="input-field">
                    <input type="password" id="password" name="password" required>
                    <label for="password">Admin Password</label>
                </div>
                <button type="submit" class="btn waves-effect waves-light">Login</button>
            </form>
        </div>
    </div>
</div>

<!-- Materialize JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

</body>
</html>
