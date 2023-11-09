package com.tech.blog.dao;
import java.sql.*;


import com.tech.blog.entities.User;

public class UserDao
{
	public Connection con;

	public UserDao(Connection con) {
		super();
		this.con = con;
	}
	
	//insert user to database
	
	public boolean saveUser(User user)
	{
		boolean f=false;
		try {
			
			//user into database
			
			String query="insert into user(name,email,password,gender,about) values(?,?,?,?,?)";
			PreparedStatement pstmt = this.con.prepareStatement(query);
			pstmt.setString(1, user.getName());
			pstmt.setString(2, user.getEmail());
			pstmt.setString(3, user.getPassword());
			pstmt.setString(4, user.getGender());
			pstmt.setString(5, user.getAbout());
			
			pstmt.executeUpdate();
			f=true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	//get user by email and password
	
	public User getUserByEmailAndPassword(String email,String password)
	{
		User user=null;
		
		try {
			String query="select * from user where email =? and password=?";
			PreparedStatement pstmt=con.prepareStatement(query);
			pstmt.setString(1, email);
			pstmt.setString(2, password);
			
			ResultSet set = pstmt.executeQuery();
			if (set.next())
			{
				user=new User();
				
				
				//data from db
				
				String name=set.getString("name");
				//set to user object
				
				user.setName(name);
				user.setEmail(set.getString("email"));
				user.setPassword(set.getString("password"));
				user.setGender(set.getString("gender"));
				user.setAbout(set.getString("about"));
				user.setDate(set.getTimestamp("rdate"));
				user.setProfile(set.getString("profile"));
				
				
			} 
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return user;
		
	}
}
