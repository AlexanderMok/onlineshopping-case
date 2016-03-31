package com.onlineshopping.dao;

import java.util.List;

import com.onlineshopping.bean.ItemType;

public interface ItemTypeDAO {
	List<?> findAll();
	void insert(ItemType itemType);
	void deleteType(Integer id);
	List<?> findByProperty(String propName, Object value);
	List<?> findByPid(Integer id);
}
