package com.blossomcart.doa;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.blossomcart.bean.SReg;
import com.blossomcart.util.DBConnection;

public class SRegDao {

	DBConnection dobj= new DBConnection();
	public String sReg(SReg reg) {
		try {
			String query="INSERT INTO s_register_table(owner_name,shop_name,address_1,address_2,district,state,pincode,license,phone_no,email_id)values(?,?,?,?,?,?,?,?,?,?)";
			Connection con=dobj.Dbconnect();
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, reg.getOname());  
            ps.setString(2, reg.getSname());  
            ps.setString(3, reg.getAddress1());
            ps.setString(4,reg.getAddress2());
            ps.setString(5, reg.getDistrict());
            ps.setString(6, reg.getState());
            ps.setString(7, reg.getPincode());
            ps.setString(8, reg.getLicenseid());
            ps.setString(9, reg.getPnum());
            ps.setString(10, reg.getEmail());
			int i=ps.executeUpdate();
			if(i!=0) {
				return "Succsess";
			}
		}catch(Exception e) {
			System.out.println(e);
		}
		return "Failed";
	}


	
}
