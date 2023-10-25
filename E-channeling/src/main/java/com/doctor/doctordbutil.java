package com.doctor;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class doctordbutil {
	
	private static Connection con=null;
	private static Statement stmt=null;
	private static ResultSet rs=null;
	
	public static List<doctor> SearchResults(String name,String speciality)
	{
		ArrayList<doctor> dc= new ArrayList<>();
		
		
		try {
			
			con=DBConnect.getConnection();
			stmt=con.createStatement();
			String sql="select * from doctor where dname='"+name+"' and speciality='"+speciality+"'";
			
			rs=stmt.executeQuery(sql);
			
			if(rs.next())
			{
				int id=rs.getInt(1);
				String Name=rs.getString(2);
				String Speciality=rs.getString(3);
				String phone=rs.getString(4);
				String hospital=rs.getString(5);
				
				doctor doc=new doctor(id,Name,Speciality,phone,hospital);
				
				dc.add(doc);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return dc;
	}

}
