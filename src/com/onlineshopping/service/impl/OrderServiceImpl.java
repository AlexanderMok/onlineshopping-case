package com.onlineshopping.service.impl;

import java.util.List;

import com.onlineshopping.bean.Order;
import com.onlineshopping.bean.User;
import com.onlineshopping.dao.OrderDAO;
import com.onlineshopping.service.OrderService;

public class OrderServiceImpl implements OrderService {
	private OrderDAO orderDao;
	
	public void setOrderDao(OrderDAO orderDao) {
		this.orderDao = orderDao;
	}

	@Override
	public void save(Order order) {
		// TODO Auto-generated method stub
		orderDao.insert(order);
	}

	@Override
	public List<?> findByUid(Integer id) {
		// TODO Auto-generated method stub
		return orderDao.findByUid(id);
	}

	@Override
	public Integer getTotalPage(Integer pageSize) {
		// TODO Auto-generated method stub
		return orderDao.getTotalPage(pageSize);
	}

	@Override
	public List<?> getAll() {
		// TODO Auto-generated method stub
		return orderDao.findAll();
	}

	@Override
	public List<?> getPage(Integer curPage) {
		// TODO Auto-generated method stub
		return orderDao.getPage(curPage);
	}

	@Override
	public Order findById(Integer id) {
		List<?> list = orderDao.findById(id);
		return list.size()>0?(Order)list.get(0):null;
	}

	@Override
	public void update(Order order) {
		// TODO Auto-generated method stub
		orderDao.update(order);
	}
}