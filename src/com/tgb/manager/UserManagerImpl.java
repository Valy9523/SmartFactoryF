package com.tgb.manager;

import java.util.List;

import com.tgb.dao.UserDao;
import com.tgb.entity.User;

public class UserManagerImpl implements UserManager {

	private UserDao userDao;
	
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public User getUser(String userName) {
		return userDao.getUser(userName);
	}

	@Override
	public List<User> getAllUser() {
		return userDao.getAllUser();
	}

	@Override
	public void addUser(User user) {
		userDao.addUser(user);
	}

	@Override
	public boolean delUser(String userName) {
		
		return userDao.delUser(userName);
	}

	@Override
	public boolean updateUser(User user) {
		return userDao.updateUser(user);
	}

	@Override
	public int getCount(String name) {
		return userDao.getCount(name);
	}

}
