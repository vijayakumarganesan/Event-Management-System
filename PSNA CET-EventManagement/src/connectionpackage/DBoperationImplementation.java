package connectionpackage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class DBoperationImplementation {
	public int EventRegisteration(String name,String dept,String year,String clg,String city,String mail,String contact,String addr,String event) {
		int Status=0;
		String quary="INSERT INTO eventregisteration(name,dept,year,clg,city,mail,contact,addr,event)values('"+name+"','"+dept+"','"+year+"','"+clg+"','"+city+"','"+mail+"','"+contact+"','"+addr+"','"+event+"')";
		Connection con=ConnectionFactory.getConnection();
		try {
			Statement sts=con.createStatement();
			Status=sts.executeUpdate(quary);
			
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return Status;
	}
	public ArrayList eventDetail(String event) {
		
		
		String quary="SELECT * FROM eventregisteration WHERE event='"+event+"'";
		Connection con=ConnectionFactory.getConnection();
		ArrayList mylist = new ArrayList();
		try {
			Statement sts=con.createStatement();
			ResultSet rs=sts.executeQuery(quary);
			while(rs.next()) {
				Student s1 = new Student();
				s1.setName(rs.getString(1));
				s1.setDept(rs.getString(2));
				s1.setYear(rs.getString(3));
				s1.setCollegename(rs.getString(4));
				s1.setCity(rs.getString(5));
				s1.setMail(rs.getString(6));
				s1.setContact(rs.getString(7));
				s1.setAddress(rs.getString(8));
				s1.setEvent(rs.getString(9));
				mylist.add(s1);
				
			}
			
		}
		
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		

		return mylist;
		
		
	}
	 public Student update(String name) {
		 String quary="SELECT * FROM eventregisteration WHERE name='"+name+"'";
			Connection con=ConnectionFactory.getConnection();
			Student s1=new Student();
			try {
				Statement sts=con.createStatement();
				ResultSet rs =sts.executeQuery(quary);
				while(rs.next())
				{
					s1.setName(rs.getString(1));
					s1.setDept(rs.getString(2));
					s1.setYear(rs.getString(3));
					s1.setCollegename(rs.getString(4));
					s1.setCity(rs.getString(5));
					s1.setMail(rs.getString(6));
					s1.setContact(rs.getString(7));
					s1.setAddress(rs.getString(8));
					s1.setEvent(rs.getString(9));
				}
				
			}
			catch(SQLException e)
			{
				System.out.println(e);
			}
		
		 

		 return s1;
		
	}
	

}
