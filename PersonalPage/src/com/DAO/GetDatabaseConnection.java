package com.DAO;
import java.net.URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class GetDatabaseConnection {
	public static Connection getConnection() throws SQLException, ClassNotFoundException{
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/my";
		String user = "root";
		String password = "yinxiang";
		Connection con =  DriverManager.getConnection(url,user,password);
		return con;		
	}
public static void main(String[] args){
	try {
		Connection con = getConnection();
		Statement statement = con.createStatement();
		String sql = "select * from user;";
		ResultSet rs = statement.executeQuery(sql);
		while (rs.next()) {
			System.out.println(rs.getString(1));
			System.out.println(rs.getString(2));
		}
		
	} catch (Exception e) {
		// TODO: handle exception
	}
	
	
}
}
