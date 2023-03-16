package com.connection;

import java.sql.*;
public class DBConnection {
	
	
	 public static Connection createConnection()
	    {
	        Connection con = null;
	        String url = "jdbc:mysql://localhost:3306/Ecommerce";
	        String username = "root";
	        String password = "user";
//	        System.out.println("In DBConnection.java class");
	        
	        try{
	            try{
	                Class.forName("com.mysql.cj.jdbc.Driver");
	            }
	            catch(ClassNotFoundException e){
	            }
	            con = DriverManager.getConnection(url,username,password);
//	            System.out.println("Printing connection object "+con);
	        }
	        catch(SQLException e){
	        }
	        return con;
	    }
}

