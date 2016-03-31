package com.onlineshopping.dao;

import java.util.List;

import com.onlineshopping.bean.Cart;

public interface CartDAO {
	void insert(Cart cart);

	List<?> findByProperty(String string, int uid);

	void delByProperty(String string, Integer itemId);
}
