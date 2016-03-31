package com.onlineshopping.service;


import java.util.List;

import com.onlineshopping.bean.Cart;
import com.onlineshopping.bean.Item;

public interface CartService {

	void addCart(Cart cart);

	List<?> getByUid(Integer uid);

	void delByProperty(Integer itemId);

}
