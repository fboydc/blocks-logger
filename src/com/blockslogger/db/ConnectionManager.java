package com.blockslogger.db;
import java.sql.*;

public class ConnectionManager {

	private static String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	private static String DB_URL = "jdbc:mysql://rds-mysql-blockslogger.ct0jwfekmkia.us-east-1.rds.amazonaws.com:3306/blockslogger";
	
	private static final String USER = "fboyd";
	private static final String PSSWD = "KiwiGate5";
	
	private static Connection conn;
	private static String urlstring;
	
	
	public static Connection connect(){
		try{
			Class.forName(JDBC_DRIVER);
			conn = DriverManager.getConnection(DB_URL, USER, PSSWD);
			return conn;
		}catch(ClassNotFoundException c){
			c.printStackTrace();
		}catch(SQLException s){
			s.printStackTrace();
		}
		
		return null;
		
	}
	
	
	public static void closeConnection(){
		try{
			conn.close();
			
		}catch(SQLException e){
			e.printStackTrace();
		}
	}
	
	
	public static ResultSet executeQuery(String query){
		conn = connect();
		PreparedStatement ps;
		try{
			ps = conn.prepareStatement(query);
			ps.execute();
			return ps.getResultSet();
			
			
		}catch(SQLException e){
			e.printStackTrace();
		}
		
		
		return null;
	}
	
	
	
}
