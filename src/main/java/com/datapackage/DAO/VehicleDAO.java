package com.datapackage.DAO;

import com.datapackage.model.Vehicle;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class VehicleDAO {
    private static final String URL = "jdbc:mysql://localhost:3306/cab_booking?useSSL=false&serverTimezone=UTC";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "Chamodi1234@#";

    // ✅ Add Vehicle
    public boolean addVehicle(Vehicle vehicle) {
        String query = "INSERT INTO vehicles (type, price, image, number_plate) VALUES (?, ?, ?, ?)";

        try (Connection conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
             PreparedStatement ps = conn.prepareStatement(query)) {

            ps.setString(1, vehicle.getType());
            ps.setDouble(2, vehicle.getPrice());
            ps.setString(3, vehicle.getImage());  // Store the image path, not the file content
            ps.setString(4, vehicle.getNumberPlate());

            return ps.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // ✅ Get All Vehicles
    public List<Vehicle> getAllVehicles() {
        List<Vehicle> vehicles = new ArrayList<>();
        String query = "SELECT * FROM vehicles";

        try (Connection conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(query)) {

            while (rs.next()) {
                vehicles.add(new Vehicle(
                        rs.getInt("id"),
                        rs.getString("type"),
                        rs.getDouble("price"),
                        rs.getString("image"),
                        rs.getString("number_plate")
                ));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return vehicles;
    }
}
