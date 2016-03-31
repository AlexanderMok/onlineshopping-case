package com.onlineshopping.dao;

import java.util.List;

import com.onlineshopping.bean.User;

public interface UserDAO {
	void insert(User user);
	void delete(Integer id);
	void update(User user);
	List<?> findAll();
	List<?> findAllBuyers();
	List<?> findByProperty(String userName, String passwor);
	//List<?> findByProperty(User user);
	//List<?> findByProperty(String propName, Object value);
	List<?> findById(Integer id);
}
