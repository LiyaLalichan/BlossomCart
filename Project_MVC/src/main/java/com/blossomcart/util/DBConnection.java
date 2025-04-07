package com.blossomcart.util;

import java.sql.*;

public class DBConnection {

    private Connection connect;

    public Connection Dbconnect() {
        try {
            // Attempt to load the MySQL JDBC driver
            Class.forName("com.mysql.jdbc.Driver");  // Ensure the driver is loaded
            
            // Attempt to establish a connection
            connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/blossom_db", "root", "");

            // Check if connection is successful
            if (connect != null) {
                System.out.println("Connection established successfully.");
            }

        } catch (ClassNotFoundException e) {
            // Handle case where MySQL JDBC driver is not found
            System.out.println("MySQL Driver not found: " + e.getMessage());
        } catch (SQLException e) {
            // Handle database connection issues
            System.out.println("Connection failed: " + e.getMessage());
        }

        return connect;  // Return the connection object (may be null if an error occurs)
    }
}
