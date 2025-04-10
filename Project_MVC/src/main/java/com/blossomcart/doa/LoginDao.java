package com.blossomcart.doa;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.blossomcart.bean.Login;
import com.blossomcart.util.DBConnection;

public class LoginDao {
    DBConnection dobj = new DBConnection();
    
    // Updated uLogin method
    public boolean uLogin(Login lobj) { 
        boolean isValid = false;

        try {
            String utype = lobj.getUsertype();
            String query = null;
            
            if (utype.equals("user")) {
                query = "SELECT email, password FROM c_register_table WHERE email = ? AND password = ?";
            } else if (utype.equals("shopowner")) {
                query = "SELECT owner_name, email_id, shop_id FROM s_register_table WHERE owner_name = ? AND email_id = ?";
            }

            Connection con = dobj.Dbconnect();
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, lobj.getUname());
            ps.setString(2, lobj.getPword());
            ResultSet rs = ps.executeQuery();
            
            if (rs.next()) {
                isValid = true;
                if (utype.equals("shopowner")) {
                    // Store the shop_id in the Login object for later use
                    lobj.setShopId(rs.getInt("shop_id"));
                }
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return isValid;
    }

    // New method to get shop_id by email for shop owner
    public int getShopIdByEmail(String email) {
        int shopId = -1;
        try {
            String query = "SELECT shop_id FROM s_register_table WHERE email_id = ?";
            Connection con = dobj.Dbconnect();
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            
            if (rs.next()) {
                shopId = rs.getInt("shop_id");
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return shopId;
    }
}
