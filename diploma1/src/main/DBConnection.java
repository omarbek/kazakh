package main;

import java.sql.Connection;
import java.sql.DriverManager;


public class DBConnection {
	public Connection getConnection(){
		Connection con;
		try{
		Class.forName("com.mysql.jdbc.Driver");
         con = DriverManager.getConnection("jdbc:mysql://localhost:3306/funnykazakh", "root", "");
         return con;
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
      return null;  
	}
}
