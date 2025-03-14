<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.datapackage.model.Contact" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>

    <div class="container mt-5">
        <h2>Contact Us</h2>
        
        <% if (request.getParameter("success") != null) { %>
            <div class="alert alert-success">Message sent successfully!</div>
        <% } %>

        <% if (request.getParameter("error") != null) { %>
            <div class="alert alert-danger">Error sending message. Please try again.</div>
        <% } %>

        <form action="${pageContext.request.contextPath}/ContactUsServlet" method="post">
            <div class="mb-3">
                <label for="name" class="form-label">Your Name</label>
                <input type="text" id="name" class="form-control" name="name" placeholder="Your Name" required>
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Your Email</label>
                <input type="email" id="email" class="form-control" name="email" placeholder="Your Email" required>
            </div>
            <div class="mb-3">
                <label for="message" class="form-label">Your Message</label>
                <textarea id="message" class="form-control" name="message" placeholder="Your Message" rows="5" required></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Send Message</button>
        </form>
    </div>

</body>
</html>
