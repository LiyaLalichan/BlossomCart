package com.blossomcart.doa;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.blossomcart.bean.Login;
import com.blossomcart.util.DBConnection;

public class LoginDao {
	DBConnection dobj=new DBConnection();
	public boolean uLogin(Login lobj) { 
		boolean isValid=false;
	
	try {
		
		String utype=lobj.getUsertype();
		
		String query=null;
		
		if(utype.equals("user")) {
			query="SELECT email,password FROM  c_register_table where email= ? and password=?";
		}
		else if(utype.equals("shopowner")) {
		
			query="SELECT owner_name,email FROM  s_register_table where owner_name=? and email=?";
		}
		
		Connection con=dobj.Dbconnect();
		
		PreparedStatement ps=con.prepareStatement(query);
		ps.setString(1, lobj.getUname());
		ps.setString(2,lobj.getPword());
		ResultSet rs=ps.executeQuery();
		if(rs.next()) {
			isValid=true;
		}
		
		
	}catch(Exception e) {
		System.out.println(e);
	}
	return isValid;

	}
}
