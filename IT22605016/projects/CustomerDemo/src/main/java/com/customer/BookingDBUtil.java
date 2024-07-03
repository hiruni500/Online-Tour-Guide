package com.customer;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class BookingDBUtil {

	//private static Connection con=null;
	//private static Statement stmt=null;
	public static List<customer>validate(String Name,String Email){
		
		ArrayList<customer> cus=new ArrayList<>();
		
		//create database connection
				String url="jdbc:mysql://localhost:3306/booking";
				String userName="root";
				String password="hiru2@IT2260*";
		
		//validation
		
				try {
					Class.forName("com.mysql.jdbc.Driver");
					
					Connection con=DriverManager.getConnection(url,userName,password);
					Statement stmt=con.createStatement();
					
					String sql="select * from booking where  name='"+Name+"' and email='"+Email+"'  ";
					ResultSet rs=stmt.executeQuery(sql);
					
					//if(rs.next()){
					String TourType=rs.getString(1);
					String  Nname=rs.getString(2);
					String Nemail =rs.getString(3);
					String  Nphone=rs.getString(4);
					String Ndate1=rs.getString(5);
					String Ndate2=rs.getString(6);
					int adults=rs.getInt(7);
					int children=rs.getInt(8);
					String NroomType=rs.getString(9);
					
					customer c=new customer (TourType,Nname,Nemail,Nphone,Ndate1,Ndate2,adults,children,NroomType);
					cus.add(c);
					}
				//}
					
				
				catch(Exception e) {
					e.printStackTrace();
				}
		
		
	return cus;	
	}
	
	public static boolean insertbooking(String tourType,String name,String email,String phone,String date1,String date2,String adults,String children,String roomType) {
		
		boolean isSuccess=false;
		
		//create database connection
		String url="jdbc:mysql://localhost:3306/booking";
		String userName="root";
		String password="hiru2@IT2260*";
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con=DriverManager.getConnection(url,userName,password);
			Statement stmt=con.createStatement();
			String sql="insert into booking values('"+tourType+"', '"+name+"', '"+email+"', '"+phone+"','"+date1+"','"+date2+"', '"+adults+"' ,'"+children+"', '"+roomType+"')";
			int rs=stmt.executeUpdate(sql);
			
			if(rs>0){
				isSuccess=true;
			}else {
				isSuccess=false;
			}
				
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
		
	}
	
	
	
	
	
}
