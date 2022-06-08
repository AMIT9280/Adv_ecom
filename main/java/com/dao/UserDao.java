package com.dao;

import java.util.ArrayList;

import com.bean.UserBean;

public class UserDao {

	private static ArrayList<UserBean> users = new ArrayList<UserBean>();

	static {

		UserBean user = new UserBean();

		user.setName("Admin");
		user.setRole("admin");
		user.setemail("Admin@1234.com");
		user.setGender("Male");
		user.setpassword("Admin@123");

		UserBean user1 = new UserBean();
		user1.setName("Rancho");
		user1.setName("customer");
		user1.setemail("cm@1234.com");
		user1.setGender("Male");
		user1.setpassword("cm123");
		
		users.add(user);
		users.add(user1);
		
	}
	public void AddUser(UserBean user) {
		 
		this.users.add(user);
	}
	
	
	public UserBean AuthenticateUser(String email,String pass) {
		
		for(UserBean user : this.users) {
			
			if(user.getemail().equalsIgnoreCase(email) && user.getpassword().equals(pass)) {
				 
				return user;
			}
		}
		return null;
	}

}
