package com.onlineshopping.service.impl;

import java.util.List;

import com.onlineshopping.bean.User;
import com.onlineshopping.dao.UserDAO;
import com.onlineshopping.service.UserService;

public class UserServiceImpl implements UserService{
	private UserDAO userDao;
	
	public void setUserDao(UserDAO userDao) {
		this.userDao = userDao;
	}

	@Override
	public void save(User user) {
		userDao.insert(user);
	}

	@Override
	public void delete(Integer id) {
		userDao.delete(id);
	}

	@Override
	public void modify(User user) {
		userDao.update(user);
	}

	@Override
	public List<?> getAllUsers() {
		return userDao.findAll();
	}

	@Override
	public List<?> getAllBuyers() {
		return userDao.findAllBuyers();
	}

	@Override
	public List<?> login(String userName, String password) {
		List<?> list = userDao.findByProperty(userName, password);
		return list;
	}

	@Override
	public User findById(Integer id) {
		List<?> list = userDao.findById(id);
		return list.size()>0?(User)list.get(0):null;
	}

}
