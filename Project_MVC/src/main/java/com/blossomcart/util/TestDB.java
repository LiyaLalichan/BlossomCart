package com.blossomcart.util;

import java.sql.Connection;

public class TestDB {
    public static void main(String[] args) {
		Connection con = null;
        DBConnection db = new DBConnection();
        try {
            con = db.Dbconnect();
            
            if (con != null) {
            	System.out.println("Sucess");
                
            }
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
