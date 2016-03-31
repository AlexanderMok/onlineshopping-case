package com.onlineshopping.service;

import java.util.List;

import com.onlineshopping.bean.User;

public interface UserService {
	void save(User user);
	void delete(Integer id);
	void modify(User user);
	List<?> getAllUsers();
	//User chklogin(String userName, String password);
	List<?> getAllBuyers();
	List<?> login(String userName, String password);
	User findById(Integer id);
}