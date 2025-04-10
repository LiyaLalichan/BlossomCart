package com.blossomcart.doa;
import com.blossomcart.bean.Product;
import com.blossomcart.util.DBConnection;
import java.sql.*;
public class ProductDao {
	 DBConnection db = new DBConnection();
	 public String addProduct(Product p) {
	        String sql = "INSERT INTO product(name, category, price, stock, description, image, shop_id) VALUES (?, ?, ?, ?, ?, ?, ?)";
	        try {
	            Connection conn = db.Dbconnect();
	            PreparedStatement ps = conn.prepareStatement(sql);

	            ps.setString(1, p.getName());
	            ps.setString(2, p.getCategory());
	            ps.setDouble(3, p.getPrice());
	            ps.setInt(4, p.getStock());
	            ps.setString(5, p.getDescription());
	            ps.setString(6, p.getImage());  // file name or path
	            ps.setInt(7, p.getShopId());

	            int result = ps.executeUpdate();

	            if (result > 0) {
	                return "Success";
	            }
	        } catch (Exception e) {
	            System.out.println("Error inserting product: " + e.getMessage());
	        }

	        return "Failed";
	    }
	}



