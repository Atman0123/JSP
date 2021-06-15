package com.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import com.bean.Emp;
import com.mysql.jdbc.PreparedStatement;

public class empdao {
	
			public static Connection getConnection() throws ClassNotFoundException, SQLException
			{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Student","root","");
				return con;
				
			}
			
			public static int insertData(Emp e) throws ClassNotFoundException, SQLException
			{
				int status=0;
				Connection con=empdao.getConnection();
				PreparedStatement ps=(PreparedStatement) con.prepareStatement("insert into emp_jsp(name,contact,email,password) values(?,?,?,?)");
				ps.setString(1, e.getName());
				ps.setLong(2, e.getContact());
				ps.setString(3, e.getEmail());
				ps.setString(4, e.getPassword());
				status=ps.executeUpdate();
				return status;
				
			}
			
}
