package com.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.UserBean;

@Repository
public class UserDao {

	@Autowired
	JdbcTemplate stmt;

	public void insertUser(UserBean user) {
		stmt.update("insert into users(firstName,email,password) values (?,?,?) ", user.getFirstName(), user.getEmail(),
				user.getPassword());
	}

	public UserBean getUserByEmail(String email)
		{
			UserBean user   =  null;
			try {
				
			}catch(Exception e)
			{
				System.out.println(e.getMessage());
					
			}
			return user;
		}
	public void updateOtp(String email,int otp)
	{
		
		stmt.update("update users set otp = ? where email = ?",otp,email);
	}
	public void updatePassword(String email,String password)
	{
		stmt.update("update users set otp = ? , password = ? where email = ?",-1,password,email);
	}
}
