package com.datapackage.DAO;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.datapackage.model.User;


public class UserDao {
    private static final Logger LOGGER = Logger.getLogger(UserDao.class.getName());

    private static final String URL = "jdbc:mysql://localhost:3306/cab_booking";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "Chamodi1234@#";

    private static final String INSERT_USER_QUERY = "INSERT INTO users (name, address, contact, username, password) VALUES (?, ?, ?, ?, ?)";

    public boolean registerUser(User user) {
        try {
            // Load MySQL JDBC Driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            try (Connection conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
                 PreparedStatement ps = conn.prepareStatement(INSERT_USER_QUERY)) {

                LOGGER.info("✅ Database Connection Successful.");

                // Set parameters
                ps.setString(1, user.getName());
                ps.setString(2, user.getAddress());
                ps.setLong(3, user.getContact());
                ps.setString(4, user.getUname());
                ps.setString(5, user.getPassword()); // Store hashed password

                // Execute query
                int rowsInserted = ps.executeUpdate();
                if (rowsInserted > 0) {
                    LOGGER.info("✅ User registered successfully!");
                    return true;
                } else {
                    LOGGER.warning("❌ Failed to register user.");
                    return false;
                }
            }
        } catch (ClassNotFoundException e) {
            LOGGER.log(Level.SEVERE, "❌ MySQL Driver Not Found!", e);
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "❌ SQL Exception Occurred!", e);
        }
        return false;
    }
}
