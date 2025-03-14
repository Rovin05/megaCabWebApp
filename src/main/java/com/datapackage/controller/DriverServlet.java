package com.datapackage.controller;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.datapackage.DAO.DriverDAO;
import com.datapackage.model.Driver;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/DriverServlet")
public class DriverServlet extends HttpServlet {
    private static final Logger LOGGER = Logger.getLogger(DriverServlet.class.getName());
    private DriverDAO driverDAO = new DriverDAO();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        LOGGER.info("Received POST request - Action: " + action);

        if ("add".equals(action)) {
            String name = request.getParameter("name");
            String license = request.getParameter("license");
            String phone = request.getParameter("phone");

            Driver driver = new Driver(name, license, phone);
            boolean isAdded = driverDAO.addDriver(driver);

            if (isAdded) {
                LOGGER.info("✅ Driver added successfully!");
            } else {
                LOGGER.warning("❌ Failed to add driver.");
            }
            response.sendRedirect("admin/manageDrivers.jsp");
        } else if ("delete".equals(action)) {
            int id = Integer.parseInt(request.getParameter("id"));
            LOGGER.info("Attempting to delete driver with ID: " + id);

            boolean isDeleted = driverDAO.deleteDriver(id);

            if (isDeleted) {
                LOGGER.info("✅ Driver deleted successfully!");
            } else {
                LOGGER.warning("❌ Failed to delete driver.");
            }
            response.sendRedirect("admin/manageDrivers.jsp");
        }
    }
}
