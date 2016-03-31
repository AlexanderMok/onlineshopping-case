package com.onlineshopping.service.impl;

import java.util.List;

import com.onlineshopping.bean.Cart;
import com.onlineshopping.bean.Item;
import com.onlineshopping.dao.CartDAO;
import com.onlineshopping.dao.ItemDAO;
import com.onlineshopping.service.CartService;

public class CartServiceImpl implements CartService {

	private CartDAO cartDao;
	
	
	public void setCartDao(CartDAO cartDao) {
		this.cartDao = cartDao;
	}

	@Override
	public void addCart(Cart cart) {
		cartDao.insert(cart);
	}
	
	@Override
	public List<?> getByUid(Integer uid) {
		// TODO Auto-generated method stub
		return cartDao.findByProperty("user.id",uid);
	}

	@Override
	public void delByProperty(Integer itemId) {
		cartDao.delByProperty("item.id",itemId);
	}

	

}
