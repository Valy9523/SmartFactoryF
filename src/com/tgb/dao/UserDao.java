package com.tgb.dao;

import java.util.List;

import com.tgb.entity.User;

public interface UserDao {
    
	public int getCount(String name);
	
	public User getUser(String userName);
	
	public List<User> getAllUser();
	
	public void addUser(User user);
	
	public boolean delUser(String userName);
	
	public boolean updateUser(User user);
}
