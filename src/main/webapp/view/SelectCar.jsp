<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Select Vehicle</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">

    <style>
        body {
            background-color: #3b3d3c;
            color: white;
            text-align: center;
        }
        .section-title {
            margin-top: 40px;
            padding: 10px;
            border-bottom: 2px solid #007bff;
            display: inline-block;
        }
    
        .car-option {
            cursor: pointer;
            border: 2px solid transparent;
            transition: 0.3s ease-in-out;
            background: rgba(255, 255, 255, 0.1); /* Transparent card */
            color: white;
            border-radius: 10px;
            overflow: hidden;
            padding: 10px;
            backdrop-filter: blur(5px); /* Glassmorphism effect */
        }

        .car-option img {
            height: 150px;
            object-fit: cover;
            transition: transform 0.6s ease-in-out; /* Smooth transition for rotation */
        }

        .car-option:hover img {
            transform: rotate(360deg); /* Rotate image 360 degrees */
        }

        .car-option:hover {
            transform: scale(1.05);
        }

        .car-option.selected {
            border: 3px solid #007bff;
            box-shadow: 0px 0px 10px #007bff;
        }
        .btn-custom {
            width: 200px;
            font-size: 18px;
        }
        footer {
            background-color: rgba(34, 34, 34, 0.8);
            color: white;
            text-align: center;
            padding: 10px;
            margin-top: 20px;
        }
        * Keyframe for image rotation */
        @keyframes rotateImage {
            0% {
                transform: rotate(0deg);
            }
            100% {
                transform: rotate(360deg);
            }
            }
    </style>
</head>
<body>

    <h2 class="mt-4">Select Your Vehicle</h2>

    <!-- Cars Section -->
    <h3 class="section-title">Cars</h3>
    <div class="container mt-3">
   
        <div class="row justify-content-center">
            <div class="col-md-3 mb-3">
                <div class="card car-option" role="button" onclick="selectVehicle('Standard Car', '500')">
                    <img src="${pageContext.request.contextPath}/images/WhatsApp_Image_2025-02-26_at_20.37.50_d1536d70-removebg-preview.png" class="card-img-top" alt="Standard Car">
                    <div class="card-body">
                        <h5 class="card-title">Standard</h5>
                        <p class="card-text">Price: LKR 500</p>
                        <p class="card-text">Number Plate: WP CAA 1234</p>
                    </div>
                </div>
            </div>
             <div class="col-md-3 mb-3">
                <div class="card car-option" role="button" onclick="selectVehicle('Standard Car', '500')">
                    <img src="${pageContext.request.contextPath}/images/WhatsApp_Image_2025-02-26_at_20.37.50_6ecbe431-removebg-preview.png" class="card-img-top" alt="Standard Car">
                    <div class="card-body">
                        <h5 class="card-title">Standard</h5>
                        <p class="card-text">Price: LKR 500</p>
                        <p class="card-text">Number Plate: CP CAD 5678</p>
                    </div>
                </div>
            </div>
             <div class="col-md-3 mb-3">
                <div class="card car-option" role="button" onclick="selectVehicle('Standard Car', '500')">
                    <img src="${pageContext.request.contextPath}/images/Adobe Express - file (10).png" class="card-img-top" alt="Standard Car">
                    <div class="card-body">
                        <h5 class="card-title">Standard</h5>
                        <p class="card-text">Price: LKR 500</p>
                        <p class="card-text">Number Plate: NP CAF 9012
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-3 mb-3">
                <div class="card car-option" role="button" onclick="selectVehicle('Compact Car', '600')">
                    <img src="${pageContext.request.contextPath}/images/Adobe Express - file (11).png" class="card-img-top" alt="Compact Car">
                    <div class="card-body">
                        <h5 class="card-title">Compact</h5>
                        <p class="card-text">Price: LKR 600</p>
                        <p class="card-text">Number Plate: EP CBG 3456
                        </p>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    
    

    <!-- Vans Section -->
    <h3 class="section-title">Vans</h3>
    <div class="container mt-3">
    
        <div class="row justify-content-center">
            <div class="col-md-3 mb-3">
                <div class="card car-option" role="button" onclick="selectVehicle('Passenger Van', '800')">
                    <img src="${pageContext.request.contextPath}/images/Adobe Express - file (5).png" class="card-img-top" alt="Passenger Van">
                    <div class="card-body">
                        <h5 class="card-title">Passenger Van</h5>
                        <p class="card-text">Price: LKR 800</p>
                        <p class="card-text">Number Plate:WP PD 1234
                        </p>
                    </div>
                </div>
            </div>
             <div class="col-md-3 mb-3">
                <div class="card car-option" role="button" onclick="selectVehicle('Passenger Van', '800')">
                    <img src="${pageContext.request.contextPath}/images/Adobe Express - file (6).png" class="card-img-top" alt="Passenger Van">
                    <div class="card-body">
                        <h5 class="card-title">Passenger Van</h5>
                        <p class="card-text">Price: LKR 800</p>
                        <p class="card-text">Number Plate: CP PB 5678
                        </p>
                    </div>
                </div>
            </div>
             <div class="col-md-3 mb-3">
                <div class="card car-option" role="button" onclick="selectVehicle('Passenger Van', '800')">
                    <img src="${pageContext.request.contextPath}/images/Adobe Express - file (4).png" class="card-img-top" alt="Passenger Van">
                    <div class="card-body">
                        <h5 class="card-title">Passenger Van</h5>
                        <p class="card-text">Price: LKR 800</p>
                        <p class="card-text">Number Plate: NP PE 9012
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-3 mb-3">
                <div class="card car-option" role="button" onclick="selectVehicle('Cargo Van', '900')">
                    <img src="${pageContext.request.contextPath}/images/Adobe Express - file (7).png" class="card-img-top" alt="Cargo Van">
                    <div class="card-body">
                        <h5 class="card-title">Cargo Van</h5>
                        <p class="card-text">Price: LKR 900</p>
                        <p class="card-text">Number Plate: EP PG 3456
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
  
    
    

    <!-- Bikes Section -->
    <h3 class="section-title">Bikes</h3>
    <div class="container mt-3">
    
        <div class="row justify-content-center">
            <div class="col-md-3 mb-3">
                <div class="card car-option" role="button" onclick="selectVehicle('Standard Bike', '300')">
                    <img src="${pageContext.request.contextPath}/images/Adobe Express - file.png" class="card-img-top" alt="Standard Bike">
                    <div class="card-body">
                        <h5 class="card-title">Standard Bike</h5>
                        <p class="card-text">Price: LKR 300</p>
                        <p class="card-text">Number Plate: EP BHE 3456
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-3 mb-3">
                <div class="card car-option" role="button" onclick="selectVehicle('Standard Bike', '300')">
                    <img src="${pageContext.request.contextPath}/images/Remove background project.png" class="card-img-top" alt="Standard Bike">
                    <div class="card-body">
                        <h5 class="card-title">Standard Bike</h5>
                        <p class="card-text">Price: LKR 300</p>
                        <p class="card-text">Number Plate: WP CAA 1234</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3 mb-3">
                <div class="card car-option" role="button" onclick="selectVehicle('Standard Bike', '300')">
                    <img src="${pageContext.request.contextPath}/images/Remove background project (1).png" class="card-img-top" alt="Standard Bike">
                    <div class="card-body">
                        <h5 class="card-title">Standard Bike</h5>
                        <p class="card-text">Price: LKR 300</p>
                        <p class="card-text">Number Plate: CP BAC 5678
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-3 mb-3">
                <div class="card car-option" role="button" onclick="selectVehicle('Sport Bike', '700')">
                    <img src="${pageContext.request.contextPath}/images/Adobe Express - file (3).png" class="card-img-top" alt="Sport Bike">
                    <div class="card-body">
                        <h5 class="card-title">Sport Bike</h5>
                        <p class="card-text">Price: LKR 700</p>
                        <p class="card-text">Number Plate: NP BGF 9012
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <!-- Luxury Section -->
    <h3 class="section-title">Luxury</h3>
    <div class="container mt-3">
    
        <div class="row justify-content-center">
            <div class="col-md-3 mb-3">
                <div class="card car-option" role="button" onclick="selectVehicle('Luxury Sedan', '1200')">
                    <img src="${pageContext.request.contextPath}/images/WhatsApp_Image_2025-02-26_at_20.37.49_f3b21cb5-removebg-preview.png" class="card-img-top" alt="Luxury Sedan">
                    <div class="card-body">
                        <h5 class="card-title">Luxury Jeep</h5>
                        <p class="card-text">Price: LKR 1200</p>
                        <p class="card-text">Number Plate: WP CAA 1234</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3 mb-3">
                <div class="card car-option" role="button" onclick="selectVehicle('Luxury SUV', '1500')">
                    <img src="${pageContext.request.contextPath}/images/Adobe Express - file (8).png" class="card-img-top" alt="Luxury SUV">
                    <div class="card-body">
                        <h5 class="card-title">Luxury SUV</h5>
                        <p class="card-text">Price: LKR 1500</p>
                        <p class="card-text">Number Plate: WP CAA 1234</p>
                    </div>
                </div>
            </div>
             <div class="col-md-3 mb-3">
                <div class="card car-option" role="button" onclick="selectVehicle('Luxury Sedan', '1200')">
                    <img src="${pageContext.request.contextPath}/images/Adobe Express - file (9).png" class="card-img-top" alt="Luxury Sedan">
                    <div class="card-body">
                        <h5 class="card-title">Luxury Sedan</h5>
                        <p class="card-text">Price: LKR 1200</p>
                        <p class="card-text">Number Plate: WP CAA 1234</p>
                    </div>
                </div>
            </div>
             <div class="col-md-3 mb-3">
                <div class="card car-option" role="button" onclick="selectVehicle('Luxury Sedan', '1200')">
                    <img src="${pageContext.request.contextPath}/images/WhatsApp_Image_2025-02-26_at_20.37.51_0f1bb298-removebg-preview.png" class="card-img-top" alt="Luxury Sedan">
                    <div class="card-body">
                        <h5 class="card-title">BMW</h5>
                        <p class="card-text">Price: LKR 1200</p>
                        <p class="card-text">Number Plate: WP CAA 1234</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
  <!-- Hidden Form to Capture Selection -->
    <form id="vehicleForm" action="CalculateBill.jsp" method="POST">
        <input type="hidden" id="selectedVehicleType" name="vehicleType" value="">
        <input type="hidden" id="selectedVehiclePrice" name="price" value="">
        <button type="submit" id="confirmButton" class="btn btn-primary mt-4" disabled>Confirm Selection</button>
    </form>

<script>
    function selectVehicle(vehicleType, price) {
        document.querySelectorAll('.car-option').forEach(card => {
            card.classList.remove('selected');
        });

        let selectedCard = event.currentTarget;
        selectedCard.classList.add('selected');

        document.getElementById("selectedVehicleType").value = vehicleType;
        document.getElementById("selectedVehiclePrice").value = price;
        document.getElementById("selectedVehiclePrice").value = price;
        document.getElementById("confirmButton").disabled = false;
    }
</script>

<!-- Footer -->
<footer>
    <p>&copy; 2025 Mega City Cab | All Rights Reserved</p>
</footer>

</body>
</html>