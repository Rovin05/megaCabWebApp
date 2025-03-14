package com.datapackage.DAO;


import com.datapackage.model.Contact;
import java.sql.*;

public class ContactDAO {

    private static final String URL = "jdbc:mysql://localhost:3306/cab_booking?useSSL=false&serverTimezone=UTC";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "Chamodi1234@#";

    // Method to save contact message into the database
    public boolean saveContactMessage(Contact contact) {
        String query = "INSERT INTO contact_messages (name, email, message) VALUES (?, ?, ?)";

        try (Connection conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
             PreparedStatement ps = conn.prepareStatement(query)) {

            ps.setString(1, contact.getName());
            ps.setString(2, contact.getEmail());
            ps.setString(3, contact.getMessage());

            return ps.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
