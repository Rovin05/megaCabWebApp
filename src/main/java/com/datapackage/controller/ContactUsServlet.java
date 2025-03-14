package com.datapackage.controller;


import com.datapackage.DAO.ContactDAO;
import com.datapackage.model.Contact;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/ContactUsServlet")
public class ContactUsServlet extends HttpServlet {

    private ContactDAO contactDAO;

    @Override
    public void init() {
        contactDAO = new ContactDAO();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Get form data from the request
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String message = request.getParameter("message");

            // Create a Contact object
            Contact contact = new Contact(name, email, message);

            // Save the contact message to the database
            boolean isSaved = contactDAO.saveContactMessage(contact);

            // Redirect to contact page with success or error message
            if (isSaved) {
                response.sendRedirect("view/contact.jsp?success=true");
            } else {
                response.sendRedirect("view/contact.jsp?error=true");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("view/contact.jsp?error=true");
        }
    }
}
