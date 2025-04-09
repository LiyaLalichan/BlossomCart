package com.blossomcart.doa;

import com.blossomcart.bean.CReg;
import com.blossomcart.util.DBConnection;
import java.sql.*;
public class CRegDao {
	DBConnection dobj= new DBConnection();
	public String cReg(CReg reg) {
		try {
			String query="INSERT INTO c_register_table(first_name,last_name,email,phone_no,password)values(?,?,?,?,?)";
			Connection con=dobj.Dbconnect();
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, reg.getFname());  // Use reg instead of robj
            ps.setString(2, reg.getLname());  // Use reg instead of robj
            ps.setString(3, reg.getEmail());  // Use reg instead of robj
            ps.setString(4, reg.getPnum());  // Use reg instead of robj
            ps.setString(5, reg.getPword()); // Use reg instead of robj
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
