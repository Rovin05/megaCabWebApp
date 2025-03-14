package com.datapackage.controller;

import com.datapackage.DAO.VehicleDAO;
import com.datapackage.model.Vehicle;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;
import java.util.List;

@WebServlet("/AdminVehicleServlet")
public class AdminVehicleServlet extends HttpServlet {
    private VehicleDAO vehicleDAO;

    @Override
    public void init() {
        vehicleDAO = new VehicleDAO();
    }

    // Handle adding vehicle
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String type = request.getParameter("type");
            double price = Double.parseDouble(request.getParameter("price"));
            
            // Handle file upload
            Part imagePart = request.getPart("imageFile");
            String imageFileName = extractFileName(imagePart);
            String imagePath = "images/" + imageFileName; // Save to 'images' folder
            
            // Save the file to the server
            String uploadPath = getServletContext().getRealPath("/") + "images" + File.separator + imageFileName;
            imagePart.write(uploadPath);

            String numberPlate = request.getParameter("numberPlate");

            // Create Vehicle object
            Vehicle vehicle = new Vehicle(0, type, price, imagePath, numberPlate);
            boolean isAdded = vehicleDAO.addVehicle(vehicle);

            if (isAdded) {
                response.sendRedirect("admin/AddVehicle.jsp?success=true");
            } else {
                response.sendRedirect("admin/AddVehicle.jsp?error=true");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("admin/AddVehicle.jsp?error=true");
        }
    }

    // Handle retrieving all vehicles
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Vehicle> vehicles = vehicleDAO.getAllVehicles();  // Get all vehicles from database
        request.setAttribute("vehicles", vehicles);  // Set the list of vehicles as a request attribute
        request.getRequestDispatcher("/admin/AddVehicle.jsp").forward(request, response);  // Forward the request to the JSP
    }

    // Utility method to extract the file name
    private String extractFileName(Part part) {
        String partHeader = part.getHeader("content-disposition");
        for (String content : partHeader.split(";")) {
            if (content.trim().startsWith("filename")) {
                return content.substring(content.indexOf("=") + 2, content.length() - 1);
            }
        }
        return null;
    }
}
