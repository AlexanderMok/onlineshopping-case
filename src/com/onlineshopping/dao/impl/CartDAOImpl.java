package com.onlineshopping.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.onlineshopping.bean.Cart;
import com.onlineshopping.dao.CartDAO;

public class CartDAOImpl extends HibernateDaoSupport implements CartDAO {

	@Override
	public void insert(Cart cart) {
		this.getHibernateTemplate().save(cart);		
	}

	@Override
	public List<?> findByProperty(String field, int uid) {
		String hql = "from Cart as cart where cart."+field+"=?";
		return this.getHibernateTemplate().find(hql,uid);
	}
	
	@Override
	public void delByProperty(String field, Integer itemId) {
		String hql = "from Cart as cart where cart."+field+"=?";
		this.getHibernateTemplate().delete(hql,itemId);
	}

}