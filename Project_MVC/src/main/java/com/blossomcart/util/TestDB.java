package com.blossomcart.util;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.SQLException;

public class TestDB {
    public static void main(String[] args) {
        DBConnection db = new DBConnection();

        try (Connection con = db.Dbconnect()) {
            if (con != null) {
                System.out.println("✅ Connected successfully!");

                DatabaseMetaData metaData = con.getMetaData();
                System.out.println("DB: " + metaData.getURL());
                System.out.println("Driver: " + metaData.getDriverName());
                System.out.println("User: " + metaData.getUserName());
            } else {
                System.out.println("❌ Connection failed.");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace(); // Optional - handles Class.forName or other errors
        }
    }
}
