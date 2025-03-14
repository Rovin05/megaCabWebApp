<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mega City Cab</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            background: url('${pageContext.request.contextPath}/images/OIP (4).jpeg') no-repeat center center fixed;
            background-size: cover;
            position: relative;
        }

        body::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            z-index: -1;
        }

        header {
            background-color: rgba(51, 51, 51, 0.8);
            color: white;
            padding: 20px;
            text-align: center;
        }

        nav ul {
            list-style: none;
            padding: 0;
            text-align: center;
        }

        nav ul li {
            display: inline;
            margin: 0 15px;
        }

        nav ul li a {
            color: white;
            text-decoration: none;
        }

        .hero-container {
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 50px;
            position: relative;
        }

        .hero-text {
            max-width: 50%;
            text-align: center;
            color: white;
        }

        .hero-text h1 {
            font-size: 80px;
            font-family: Arial, sans-serif;
        }

        .hero-text p {
            font-size: 20px;
            color: lightgray;
        }

        .hero-text .btn {
            background-color: black;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            display: inline-block;
            margin-top: 10px;
        }

        .cards-container {
            display: flex;
            flex-direction: row; 
            align-items: center;
            justify-content: space-around;
            gap: 20px;
            padding: 20px;
            flex-wrap: wrap;
        }

        .card {
            background: rgba(255, 255, 255, 0.2);
            padding: 50px;
            border-radius: 50px;
            text-align: center;
            color: white;
            width: 50%;
            min-width: 200px;
        }

        .service-items-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            gap: 20px;
        }

        #services {
            padding: 50px;
            text-align: center;
            color: white;
        }

        .service-items-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
        }

        .service-item {
            background: rgba(255, 255, 255, 0.2);
            padding: 30px;
            border-radius: 10px;
            width: 250px;
            text-align: center;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s ease;
        }

        .service-item h3 {
            font-size: 22px;
            margin-bottom: 10px;
            color: #ff9800;
        }

        .service-item p {
            font-size: 16px;
            color: lightgray;
            margin-bottom: 10px;
        }

        .service-item img {
            width: 100%;
            height: 200px;
            object-fit: cover;
            border-bottom: 2px solid #ff9800;
        }

        .service-item:hover {
            transform: translateY(-10px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
        }

        #review {
            text-align: center;
            padding: 40px;
            color: white;
        }

        #contact {
            padding: 50px;
            text-align: center;
            color: white;
        }

        #contact form {
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 10px;
        }

        form input, form textarea {
            width: 50%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        footer {
            background-color: rgba(34, 34, 34, 0.8);
            color: white;
            text-align: center;
            padding: 10px;
            margin-top: 20px;
        }

        /* About Us Section - Image on Left */
        #about {
            display: flex;
            align-items: center;
            text-align: left;
            gap: 20px;
            line-height: 1.8;
            word-spacing: 5px;
            margin-bottom: 20px;
        }

        #about img {
            width: 300px;
            height: auto;
            border-radius: 20px;
            flex-shrink: 0;
        }

        #about p {
            margin-bottom: 20px;
        }

        /* Customer Reviews Section */
        #review {
            text-align: center;
            padding: 40px;
            color: white;
        }

        .review-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
        }

        .review-item {
            background: rgba(255, 255, 255, 0.2);
            padding: 30px;
            border-radius: 10px;
            width: 250px;
            text-align: center;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s ease;
        }

        .review-item h4 {
            margin-top: 10px;
            font-size: 18px;
            color: #ff9800;
        }

        .review-item p {
            font-size: 16px;
            color: lightgray;
            margin-bottom: 10px;
        }

        .review-item img {
            width: 80px;
            height: 80px;
            border-radius: 50%;
            margin-bottom: 10px;
        }

        .review-item:hover {
            transform: translateY(-10px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
        }

        /* Location Section */
        #location {
            background-color: rgba(51, 51, 51, 0.8);
            padding: 50px;
            text-align: center;
            color: white;
        }

        #location h2 {
            font-size: 36px;
            margin-bottom: 20px;
        }

        #location p {
            font-size: 20px;
            margin-bottom: 20px;
        }

        #location .map-container {
            width: 80%;
            margin: 0 auto;
        }

        /* Mobile-responsive */
        @media (max-width: 768px) {
            .service-items-container {
                flex-direction: column;
                align-items: center;
            }

            .service-item {
                width: 80%;
                margin-bottom: 20px;
            }

            .hero-container {
                flex-direction: column;
                padding: 20px;
            }

            .hero-image {
                width: 100%;
                margin: 0;
            }

            .hero-text h1 {
                font-size: 50px;
            }
        }
    </style>
</head>
<body>
    <header>
    <nav>
        <ul>
        <li><a href="#home">Home</a></li>
        <li><a href="#about">About</a></li>
        <li><a href="#services">Services</a></li>
        <li><a href="#contact">Contact</a></li>
        <li><a href="#review">Customer Review</a></li>
        <li><a href="#location">Location</a></li>
        <li><a href="Booking.jsp">Book a Ride</a></li> <!-- Updated this link -->
        <li><a href="Help.jsp">Help</a></li>
        <li><a href="LogOut.jsp">LogOut</a></li>
        </ul>
    </nav>
</header>


    <section class="hero-container">
        <div class="hero-text">
            <h1>Mega City Cab</h1>
            <p>Reliable and Fast Cab Service in Colombo. Thousands of satisfied customers trust us for safe and comfortable rides.</p>
           
    </section>

    <div class="cards-container">
        <!-- About Us Section -->
        <section id="about" class="card">
            
            <div>
                <h2>About Us</h2>
                <p>Welcome to Mega City Cab, Colombo's trusted and efficient cab service provider. With thousands of customers relying on us each month, we are committed to offering safe, reliable, and comfortable rides across the city.</p>
                <p>At Mega City Cab, we continuously strive to enhance customer experience by adopting innovative solutions. To streamline our operations and improve efficiency, we are transitioning to a computerized booking and management system. This new system will simplify customer bookings, manage driver and vehicle details, and ensure seamless billing, making your rides smoother than ever.</p>
            </div>
        </section>

        <!-- Our Services Section -->
        <section id="services">
            <h2>Our Services</h2>
            <div class="service-items-container">
                <div class="service-item">
                    <img src="${pageContext.request.contextPath}/images/OIP (3).jpeg" alt="City Rides">
                    <div class="service-info">
                        <h3>City Rides</h3>
                        <p>Experience fast and comfortable rides around the city.</p>
                    </div>
                </div>
                <div class="service-item">
                    <img src="${pageContext.request.contextPath}/images/OIP (4).jpeg" alt="Airport Transfers">
                    <div class="service-info">
                        <h3>Airport Transfers</h3>
                        <p>Reliable and on-time transfers to and from the airport.</p>
                    </div>
                </div>
                <div class="service-item">
                    <img src="${pageContext.request.contextPath}/images/call-bg-1024x615.webp" alt="Corporate Rides">
                    <div class="service-info">
                        <h3>Corporate Rides</h3>
                        <p>We offer tailored rides for corporate clients and events.</p>
                    </div>
                </div>
            </div>
        </section>
    </div>

    <!-- Customer Reviews Section -->
    <section id="review">
        <h2>Customer Reviews</h2>
        <div class="review-container">
            <div class="review-item">
                <img src="${pageContext.request.contextPath}/images/OIP (2).jpeg" alt="Customer 1">
                <p>"Great experience, the cab was clean, and the driver was friendly!"</p>
                <h4>John Doe</h4>
            </div>
            <div class="review-item">
                <img src="${pageContext.request.contextPath}/images/teenage-girl-widely-smole-to-camera-38096932.webp" alt="Customer 2">
                <p>"On-time service and comfortable ride, highly recommend!"</p>
                <h4>Jane Smith</h4>
            </div>
            <div class="review-item">
                <img src="${pageContext.request.contextPath}/images/shackets-data.jpg" alt="Customer 3">
                <p>"Excellent customer service. I will definitely use Mega City Cab again!"</p>
                <h4>Mark Wilson</h4>
            </div>
        </div>
    </section>

    <!-- Contact Us Section -->
    <section id="contact">
        <h2>Contact Us</h2>
        <form>
            <input type="text" placeholder="Your Name" required>
            <input type="email" placeholder="Your Email" required>
            <textarea placeholder="Your Message" rows="5" required></textarea>
            <button type="submit">Send Message</button>
        </form>
    </section>

    <!-- Location Section -->
    <section id="location">
        <h2>Find Us</h2>
        <p>We are located in the heart of Colombo, making it easy for you to find us and book a cab at any time.</p>
        <div class="map-container">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d126118.55425958116!2d79.9213259462666!3d6.9270782999999995!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae2592abf0f3179%3A0x774cdbad60ac2955!2sColombo!5e0!3m2!1sen!2slk!4v1610132552349!5m2!1sen!2slk" width="100%" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
        </div>
    </section>

    <footer>
        <p>&copy; 2025 Mega City Cab | All Rights Reserved</p>
    </footer>
</body>
</html>
