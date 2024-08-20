package com.yourdomain.controllers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class studentDb {
    private static final String URL = "jdbc:mysql://localhost:3306/student_enquiry";
    private static final String USER = "root";
    private static final String PASSWORD = "mahalakshmi";

    public void saveStudent(StudentEntity student) {
        // SQL query to insert data into student_table
        String sql = "INSERT INTO student_table (childName, childAge, parentName, phoneNumber, email, admissionDate, comments) VALUES (?, ?, ?, ?, ?, ?, ?)";

        // Establish connection and execute insert statement
        try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
             PreparedStatement statement = connection.prepareStatement(sql)) {

            
            // Set parameters for the prepared statement
            statement.setString(1, student.getChildName());
            statement.setString(2, student.getChildAge());
            statement.setString(3, student.getParentName());
            statement.setString(4, student.getPhoneNumber());
            statement.setString(5, student.getEmail());
            statement.setString(6, student.getAdmissionDate());
            statement.setString(7, student.getComments());

            // Execute the update
            int rowsInserted = statement.executeUpdate();
            System.out.println("Rows inserted: " + rowsInserted);

        } catch (SQLException e) {
            // Log SQL errors
            System.err.println("SQL error: " + e.getMessage());
            e.printStackTrace();
        } // Remove ClassNotFoundException if not needed
    }
}
