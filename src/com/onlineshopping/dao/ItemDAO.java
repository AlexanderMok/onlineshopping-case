package com.onlineshopping.dao;

import java.util.List;

import com.onlineshopping.bean.Item;

public interface ItemDAO {
	void insert(Item item);
	void delete(Integer id);
	void Update(Item item);
	List<?> findAll();
	Item findById(Integer id);
	Integer getTotalPage(Integer pageSize);
	List<?> getPage(Integer curPage);
	List<?> findByProperty(String propName, Object value);
}
