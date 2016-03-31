package com.onlineshopping.dao;

import java.util.List;

import com.onlineshopping.bean.Order;

public interface OrderDAO {

	void insert(Order order);

	List<?> findByUid(Integer id);

	List<?> findAll();

	List<?> getPage(Integer curPage);

	Integer getTotalPage(Integer pageSize);

	List<?> findById(Integer id);

	void update(Order order);

}
