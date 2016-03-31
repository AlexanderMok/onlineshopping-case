package com.onlineshopping.service;

import java.util.List;

import com.onlineshopping.bean.Order;

public interface OrderService {

	void save(Order order);

	List<?> findByUid(Integer id);

	Integer getTotalPage(Integer pageSize);

	List<?> getAll();

	List<?> getPage(Integer curPage);

	Order findById(Integer id);

	void update(Order order);

}
