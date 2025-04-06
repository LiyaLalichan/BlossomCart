package com.blossomcart.util;

import java.sql.*;

public class DBConnection {

	public Connection connect;
	
    public Connection Dbconnect() {
   	 try {
   		Class.forName("com.mysql.cj.jdbc.Driver");

   	 }
   	 catch(ClassNotFoundException e) {
   		 System.out.println(e);
   	 }
   	 try {
   		 connect=DriverManager.getConnection("jdbc:mysql://localhost:3306/blossom_db","root","");
   	 }
   	 catch(Exception e) {
   		 System.out.println(e);
   	 }
   	 return connect;
    }
	
}

