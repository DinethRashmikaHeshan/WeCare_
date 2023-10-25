package com.patient;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class patientdbutil {
	
	private static Connection con=null;
	private static Statement stmt=null;
	private static ResultSet rs=null;
	
	public static List<patient> validate(String username,String password)
	{
		ArrayList<patient> pt= new ArrayList<>();
		
		//validating
		try {
			
			con=DBConnect.getConnection();
			stmt=con.createStatement();
			String sql="select * from patient where username='"+username+"' and password='"+password+"'";
			
			rs=stmt.executeQuery(sql);
			
			if(rs.next())
			{
				int id=rs.getInt(1);
				String name=rs.getString(2);
				String phone=rs.getString(3);
				String email=rs.getString(4);
				String un=rs.getString(5);
				String pwd=rs.getString(6);
				
				patient pn=new patient(id,name,phone,email,un,pwd);
				
				pt.add(pn);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return pt;
	}

}
